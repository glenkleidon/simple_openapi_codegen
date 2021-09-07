class IfLine {

    reset() {
        this.lineNo = -1;
        this.count = 0;
        this.content = "";
        this.LastAllowedBlankLine=0;
        this.LastAllowedLine=0;
        this.skip = false;
    }

    constructor(text, lineNo) {
        this.reset();
        this.isIfLine(text, lineNo);
    }

    isIfLine(line, lineNo) {

        let result = (line && line.trim().startsWith('#IF'));
        if (result) {
            this.lineNo = lineNo;

            let firstSpace = line.indexOf(' ');
            this.content = line.substring(firstSpace).trim();
            let count = parseInt(
                line.substring(3, firstSpace)
                    .replace('[', '')
                    .replace(']', '')
                    .trim());

            this.count = (isNaN(count)) ?  1 : count ; // 1 blank line allowed by default
            this.LastAllowedLine = lineNo+count;
            this.LastAllowedBlankLine = this.LastAllowedLine-1;
            this.skip = true;
        }
        return result;
    }

    getContent(line, lineNo) {
        this.skip = false;
        let lineIsBlank = (line || '').trim() === '';
        let alwaysReset = (lineNo > this.LastAllowedLine)
        let resetIfBlank = ((lineNo > this.LastAllowedBlankLine));
        
        let anotherIfLine = (!lineIsBlank && this.isIfLine(line, lineNo));

        if ((anotherIfLine) || (lineIsBlank && !resetIfBlank)) return "";
        let content = (alwaysReset) ? "" :this.content;
        this.reset();
        return content;
    }
}

class CodeGen {
    constructor() {

    }

    setElementText(id, text) {
        let el = document.getElementById(id);
        if (el) el.innerText = text;
    }

}

const cg = new CodeGen();