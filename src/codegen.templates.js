
class CodeGenTemplate {

    constructor(templates, nameSpace, fileName, fileExtn) {

        this.templates = templates || {};
        this.nameSpace = nameSpace || "";
        this.fileName = fileName || "";
        this.fileExtn = fileExtn || "";
    }

    getTagValue(tag) {
        if (!tag) {
            return [];
        }
        let tagFields = tag.split('~');
        let tagValues = { name: "", key: "" };
        if (tagFields.length === 1) {
            tagValues.name = tag
        }
        else {
            tagValues.name = `${tagFields[0]}>`;
            tagValues.key = tagFields[1].replace('>', '');
        }

        let element = this.templates.find(
            v => (v[0] === tagValues.name)
        );
        if (element) {
            if (tagValues.key) {
                element[1] = element[1].replaceAll(swgr.ID, tagValues.key);
            }
            return element;
        }
        else return [];

    }

    isJSONPath(name) {
        return (name.indexOf("$.") === 0) || (name.indexOf("@.") === 0);
    }

    isJSONPathTag(name) {
        return (name.indexOf("<#$.") === 0) || (name.indexOf("<#@.") === 0);
    }

    setValueOrName(text) {
        let result = { name: "", value: "", template: "" };
        let name = (this.isJSONPathTag(text)) ? text.substring(2, text.length - 1) : text;
        if (this.isJSONPath(name)) {
            result.name = name;
        }
        else {
            let tagValue = this.getTagValue(text);
            switch (tagValue.length) {
                case 0:
                case 1:
                    result.value = ""
                    break;
                default:
                    let value = tagValue[1];
                    if (this.isJSONPath(value)) {
                        result.name = value;
                    }
                    else {
                        result.value = value;
                    }
                    // deal with single case only.                    

                    for (let i = 2; i < tagValue.length; i++) {
                        result.template = tagValue[i];
                    }
                    break;
            }
            let value = (tagValue.length > 1) ? tagValue[1] : "";
        }
        return result;
    }

    extractTag(text, swagger) {
        let index = text.indexOf("<#");

        let result = {
            preText: "",
            name: "",
            newValue: { name: "", value: "" },
            index: index,
            postText: "",
            path: ""
        }

        if (index < 0) {
            result.newValue = this.setValueOrName(text, swagger);
            return result;
        }

        let endIndex = text.indexOf(">", index);
        result.preText = text.substring(0, index);
        result.postText = text.substring(endIndex + 1);
        result.index = endIndex + 1;

        let name = text.substring(index, endIndex + 1);
        result.newValue = this.setValueOrName(name, swagger);
        return result;
    }




    cleanUp(text) {
        let newText = "";
        let hasBlank = true;

        let ifLine = new IfLine();

        let lines = text.replaceAll("\r", "").split("\n");
        let lineNo = 0;

        lines.forEach(line => {

            let conditionalLine = ifLine.getContent(line, lineNo++);

            if (conditionalLine) {
                newText = `${newText}${conditionalLine}\r\n`;
                hasBlank = false;
            }
            if (!ifLine.skip) {

                if (line.trim().length === 0) {
                    if (!hasBlank) {
                        newText = `${newText}\r\n`;
                        hasBlank = true;
                    }
                }
                else {
                    newText = `${newText}\r\n${line}`;
                    hasBlank = false;
                }
            }

        });
        /// quick fix for $refPaths

        return newText
            .replaceAll("#/components/schemas/", "T")
            .replaceAll('property To:', 'property &To:')
            .replaceAll('property type:', 'property &type:')
            .replaceAll('property to:', 'property &to:')
            .replaceAll('property Type:', 'property &Type:')
            .replaceAll('property Message:', 'property &Message:')


    }
    /**
     * Iterates up the parent tree to populate a template with parent Ids
     * @param {string} template - The current template
     * @param {string} swagger - the (child) object being CodeGen'ed.
     */
    setTemplateIds(template, swagger) {
        if (template.indexOf(swgr.PATH_PARENT) >= 0 && (swagger) && (swagger.$parent)) {
            let newTemplate = template;
            let parent = swagger.$parent;
            let path = swgr.PARENT_ID;
            let key = "";
            while (parent && newTemplate.index) {
                // maintain the current key unless it is changed.
                key = (parent.$key) ? parent.$key : key;
                // replace and parent key
                newTemplate.replaceAll(path, key);
                path = `${swgr.PATH_PARENT}${depth}`;
                parent = parent.$parent;
            }
            return newTemplate;
        }
        else return template;
    }

    setObjectValueOf(text, swagger, template) {
        if (this.isJSONPath(text)) {
            let value = JSONPath({ path: text, json: swagger });
            if (!template) return value;
            let newValue = ""
            let newTemplate = this.setTemplateIds(template, swagger);
            if (Array.isArray(value)) {
                value.forEach(element => {
                    if (typeof element === 'object') {
                        element.$parent = swagger;
                        for (let key in element) {
                            if (key.startsWith('$')) continue;
                            element.$key = key;
                            newValue = `${newValue}${(
                                this.fillTemplate((template.replaceAll(swgr.ID, key)), element[key])
                                    .replaceAll(swgr.PARENT_ID, key)
                            )}`;
                        }
                    } else {
                        newValue = `${newValue}${(template.replaceAll(swgr.ID, element))}`;
                    }
                });
            }
            return newValue;
        }
        return "";
    }


    fillTemplate(text, swagger) {
        let value = this.setObjectValueOf(text, swagger);
        if (value) return value;

        let nextTag = this.extractTag(text, swagger);
        while (nextTag.index >= 0) {
            if (nextTag.newValue.name) {
                nextTag.newValue.value = this.setObjectValueOf(
                    nextTag.newValue.name, swagger, nextTag.newValue.template
                );
            }
            text = `${nextTag.preText}${nextTag.newValue.value}${nextTag.postText}`;
            nextTag = this.extractTag(text, swagger, nextTag.newValue.template);
        }
        return this.cleanUp(text);
    }

    code(swagger) {
        swagger.info.fileStem = this.fileName;
        let root = this.setValueOrName(".");
        return this.fillTemplate(root.value, swagger);
    }

}

