class CodeGenTemplateConstants {
    constructor() {
        this.PATH_THIS = ".\\";
        this.PATH_PARENT = "..\\";
        this.ID = `{${this.PATH_THIS}id}`;
        this.PARENT_ID = `{${this.PATH_PARENT}id}`;
        this.PARENTS_PARENT_ID = `{${this.PARENT_ID_STEM}${this.PARENT_ID_STEM}id}`;
        this.INFO = {
            TITLE : "$.info.title",
            FILESTEM : "$.info.fileStem"
        };
        this.CLASS = {
            NAMES: "$.components.schemas"
        }
        this.OBJECT = {
            NAMES: "$.components.schemas[?(@.type='object')]~"
        }
        this.PROP = { 
            TYPES : "$.properties.~",

            NAMES: "$.properties[?(@.type&&@.type!='array')]~",
            TYPE : `$.properties.${this.ID}.type`,

            LISTNAMES: "$.properties[?(@.type&&@.type=='array')]~",
            LISTTYPE : `$.properties.${this.ID}.items[?(!@._)]`,
             
            REFNAMES : "$.properties[?(!@.type)]~",
            REFTYPE : `$.properties.${this.ID}.$ref`
            
        };
        this.TAGS = {
            BASECLASS : "<#base_class>",
            LISTCLASS : "<#list_class>",
            LISTCLASSCONSTRUCTOR : "<#list_class_constructor>",
            NAMES: {
                NAMESPACE: "<#namespace>",
                FILESTEM: "<#file_stem>",
                FILEEXTN: "<#file_extn>"
            },
            DECLARATIONS: {
                PUBLIC: {
                    USES: "<#uses>",
                    ENUMS :"<#enums>",
                    CONSTANTS: "<#constants>",
                    VARIABLES: "<#variables>",
                    INTERFACES: "<#interfaces>",
                    CLASSES: "<#classes>",
                    METHODS: "<#methods>",   
                    PROPERTIES: "<#properties>",
                    LISTPROPERTIES: "<#list_properties>",
                    REFTYPEPROPERTIES: "<#reftype_properties>",
                    MEMBERS: "<#members>",
                    REFTYPES: "<#reftypes>",
                    GETTERS: "<#getters>",                    
                    SETTERS: "<#setters>",  
                    LISTGETTERS: "<#listgetters>",                    
                    LISTESETTERS: "<#listsetters>",                         
                },
                PRIVATE: {
                    CONSTANTS: "<#private_constants>",
                    ENUMS :"<#private_enums>",
                    VARIABLES: "<#private_variables>",
                    USES: "<#private_uses>",
                    METHODS: "<#private_methods>",
                    CLASSES: "<#private_classes>",
                    INTERFACES: "<#private_interfaces>",
                    MEMBERS: "<#private_members>",
                    REFTYPES: "<#private_reftypes>",
                    LISTTYPES: "<#private_listtypes>",
                    GETTERS: "<#private_getters>",                    
                    SETTERS: "<#private_setters>",   
                    REFTYPEGETTERS: "<#private_reftypegetters>",                    
                    REFTYPESETTERS: "<#private_reftypesetters>", 
                    LISTGETTERS: "<#private_listgetters>",                    
                    LISTSETTERS: "<#private_listsetters>",                         
                    PROPERTIES: "<#private_properties>",
                    LISTPROPERTIES: "<#private_listproperties>",
                    REFTYPEPROPERTIES: "<#private_reftypeproperties>"
                },
                PROTECTED: {
                    CONSTANTS: "<#protected_constants>",
                    ENUMS :"<#protected_enums>",
                    VARIABLES: "<#protected_variables>",
                    USES: "<#protected_uses>",
                    METHODS: "<#protected_methods>",
                    CLASSES: "<#protected_classes>",
                    INTERFACES: "<#protected_interfaces>",
                    MEMBERS: "<#protected_members>",
                    REFTYPES: "<#protected_reftypes>",
                    LISTTYPES: "<#protected_LISTtypes>",
                    GETTERS: "<#protected_getters>",                    
                    SETTERS: "<#protected_setters>",   
                    REFTYPEGETTERS: "<#protected_reftypegetters>",                    
                    REFTYPESETTERS: "<#protected_reftypesetters>", 
                    LISTGETTERS: "<#protected_listtypegetters>",                    
                    LISTSETTERS: "<#protected_listtypesetters>",                      
                    PROPERTIES: "<#protected_properties>",
                    LISTPROPERTIES: "<#protected_listproperties>",
                    REFTYPEPROPERTIES: "<#protected_reftypeproperties>"
                },
                FORWARD: {
                    CLASSES: "<#forward_class_declarations>",
                    INTERFACES: "<#forward_interface_declarations>",
                },
                INTERNAL: {
                    ENUMS :"<#enums>",
                    CONSTANTS: "<#internal_constants>",
                    VARIABLES: "<#internal_variables>",
                    METHODS: "<#internal_methods>",
                    CLASSES: "<#internal_classes>",
                }
            },
            IMPLEMENTATIONS: {
                IMPLEMENTATION : "<#implmentation>",
                INITIALIZATION:  "<#initialization>",
                FINALIZATION:    "<#finalization>",
                CLASSES:    "<#class_implementations>",
                METHODS:    "<#method_implementations>",
                PROCEDURES: "<#procedure_implementations>",
                CLASS: {
                    COMMENT: "<#classmethod_comment>",
                    FUNCTIONS: "<#classmethod_functions>",
                    PROCEDURES: "<#classmethod_procedures>",
                    CONSTRUCTORS: "<#classmethod_constructors>",
                    DESTRUCTORS: "<#classmethod_destructors>",
                    FUNCTION: "<#class_function_implementation>",
                    PROCEDURE: "<#class_procedure_implementation>",
                    GETTER: "<#class_getter_implementation>",
                    REFTYPEGETTER: "<#class_reftypegetter_implementation>",
                    LISTGETTER: "<#class_listgetter_implementation>",
                    SETTER: "<#class_setter_implementation>",                    
                    REFTYPESETTER: "<#class_reftypesetter_implementation>",
                    LISTSETTER: "<#class_listsetter_implementation>",
                    CONSTRUCTOR: "<#class_constructor_implementation>",
                    DESTRUCTOR: "<#class_destructor_implementation>",
                }
            }
        }
    }
    asTag(name,key) {
        let startTag = '<#';
        let endTag = (key) ? `~${key}>` : ">";
        if (name.startsWith(startTag)) 
        {
            // Already a tag, add key if needed
            if (!key) return name;
            return (`${name.substring(0,name.length-1)}${endTag}`);
        };
        return `${startTag}${name}${endTag}`;
    }
    asPath(path) {
        return this.asTag(path);
    }
}

const swgr = new CodeGenTemplateConstants();