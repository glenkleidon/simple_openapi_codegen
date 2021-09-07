/*
Delphi CodeGen For Swagger Template.
*/


const DelphiTemplates = [

    // (Unit) Uses 
    [swgr.TAGS.DECLARATIONS.PUBLIC.USES,
`  System.SysUtils, System.Classes, System.Generics.Collections,
   Spring, Spring.Container, Spring.Collections, JSON.Serializers;
`   ],    

    [swgr.TAGS.NAMES.NAMESPACE, swgr.INFO.TITLE],
    [swgr.TAGS.NAMES.FILESTEM, swgr.INFO.FILESTEM],

    // Forward
    [swgr.TAGS.DECLARATIONS.FORWARD.CLASSES, swgr.OBJECT.NAMES, `  T${swgr.ID} = class;\r\n`],

    // Classes 

    // Class Definitions
    
    // Custom
    [swgr.TAGS.BASECLASS, "TObject"],
    [swgr.TAGS.LISTCLASS, swgr.PROP.LISTTYPE, `IList< ${swgr.ID} >`],
    [swgr.TAGS.LISTCLASSCONSTRUCTOR, `TCollections.CreateList< ${swgr.asPath(swgr.PROP.LISTTYPE)} >`],


    // Properties 
    [swgr.asTag("member_type"), swgr.PROP.TYPES],
    
    // Property
    [swgr.TAGS.DECLARATIONS.PUBLIC.PROPERTIES, swgr.PROP.NAMES, 
        `    property ${swgr.ID}: ${swgr.asPath(swgr.PROP.TYPE)} read Get${swgr.ID} write Set${swgr.ID};\r\n`
    ],
    [swgr.TAGS.DECLARATIONS.PUBLIC.REFTYPEPROPERTIES, swgr.PROP.REFNAMES, 
        `    property ${swgr.ID}: ${swgr.asPath(swgr.PROP.REFTYPE)} read Get${swgr.ID} write Set${swgr.ID};\r\n`
    ],
    [swgr.TAGS.DECLARATIONS.PUBLIC.LISTPROPERTIES, swgr.PROP.LISTNAMES, 
        `    property ${swgr.ID}: ${swgr.asTag(swgr.TAGS.LISTCLASS, swgr.ID)} read Get${swgr.ID} write Set${swgr.ID};\r\n`
    ], 

    // Getters and Setters.
    [swgr.TAGS.DECLARATIONS.PRIVATE.GETTERS, swgr.PROP.NAMES, 
        `    function Get${swgr.ID}: ${swgr.asPath(swgr.PROP.TYPE)};\r\n`],
    [swgr.TAGS.DECLARATIONS.PRIVATE.SETTERS, swgr.PROP.NAMES, 
        `    procedure Set${swgr.ID}(const AValue: ${swgr.asPath(swgr.PROP.TYPE)});\r\n`],
    
    [swgr.TAGS.DECLARATIONS.PRIVATE.LISTGETTERS, swgr.PROP.LISTNAMES,
        `    function Get${swgr.ID}: ${swgr.asTag(swgr.TAGS.LISTCLASS, swgr.ID)};\r\n`],
    [swgr.TAGS.DECLARATIONS.PRIVATE.LISTSETTERS, swgr.PROP.LISTNAMES, 
        `    procedure Set${swgr.ID}(const AValue: ${swgr.asTag(swgr.TAGS.LISTCLASS, swgr.ID)});\r\n`],
    
    [swgr.TAGS.DECLARATIONS.PRIVATE.REFTYPEGETTERS, swgr.PROP.REFNAMES, 
        `    function Get${swgr.ID}: ${swgr.asPath(swgr.PROP.REFTYPE)};\r\n`],
    [swgr.TAGS.DECLARATIONS.PRIVATE.REFTYPESETTERS, swgr.PROP.REFNAMES, 
        `    procedure Set${swgr.ID}(const AValue: ${swgr.asPath(swgr.PROP.REFTYPE)});\r\n`],

    // Members
    [swgr.TAGS.DECLARATIONS.PRIVATE.MEMBERS, swgr.PROP.NAMES, `    F${swgr.ID}: ${swgr.asTag(swgr.PROP.TYPE)};\r\n` ],
    [swgr.TAGS.DECLARATIONS.PRIVATE.REFTYPES, swgr.PROP.REFNAMES, `    F${swgr.ID}: ${swgr.asPath(swgr.PROP.REFTYPE)};\r\n`],
    [swgr.TAGS.DECLARATIONS.PRIVATE.LISTTYPES, swgr.PROP.LISTNAMES, `    F${swgr.ID}: ${swgr.asTag(swgr.TAGS.LISTCLASS, swgr.ID)};\r\n`],    

    // Class 

    [swgr.TAGS.DECLARATIONS.PUBLIC.CLASSES, swgr.CLASS.NAMES,
`  T${swgr.ID} = class(${swgr.TAGS.BASECLASS})
  private
${swgr.TAGS.DECLARATIONS.PRIVATE.MEMBERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.REFTYPES}
${swgr.TAGS.DECLARATIONS.PRIVATE.LISTTYPES}
${swgr.TAGS.DECLARATIONS.PRIVATE.GETTERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.SETTERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.REFTYPESETTERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.REFTYPEGETTERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.LISTSETTERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.LISTGETTERS}
${swgr.TAGS.DECLARATIONS.PRIVATE.METHODS}
${swgr.TAGS.DECLARATIONS.PRIVATE.PROPERTIES}
  protected
${swgr.TAGS.DECLARATIONS.PROTECTED.REFTYPES}
${swgr.TAGS.DECLARATIONS.PROTECTED.LISTTYPES}
${swgr.TAGS.DECLARATIONS.PROTECTED.MEMBERS}
${swgr.TAGS.DECLARATIONS.PROTECTED.GETTERS}
${swgr.TAGS.DECLARATIONS.PROTECTED.REFTYPES}
${swgr.TAGS.DECLARATIONS.PROTECTED.SETTERS}
${swgr.TAGS.DECLARATIONS.PROTECTED.METHODS}
  public
    constructor Create;
    destructor Destroy; override;
  published
${swgr.TAGS.DECLARATIONS.PUBLIC.MEMBERS}
${swgr.TAGS.DECLARATIONS.PUBLIC.GETTERS}
${swgr.TAGS.DECLARATIONS.PUBLIC.REFTYPES}
${swgr.TAGS.DECLARATIONS.PUBLIC.SETTERS}
${swgr.TAGS.DECLARATIONS.PUBLIC.METHODS}
${swgr.TAGS.DECLARATIONS.PUBLIC.PROPERTIES}
${swgr.TAGS.DECLARATIONS.PUBLIC.LISTPROPERTIES}
${swgr.TAGS.DECLARATIONS.PUBLIC.REFTYPEPROPERTIES}
  end;
`  ],


    // Implementation
    [swgr.TAGS.IMPLEMENTATIONS.IMPLEMENTATION,
`
${swgr.TAGS.IMPLEMENTATIONS.PROCEDURES} 

${swgr.TAGS.IMPLEMENTATIONS.METHODS} 

${swgr.TAGS.IMPLEMENTATIONS.CLASSES} 

`   ],

    // Class Implementations

    // Class Top Comment
    [swgr.TAGS.IMPLEMENTATIONS.CLASS.COMMENT, `{ ${swgr.PARENT_ID} }\r\n`],

    // Class Setters
    [swgr.TAGS.IMPLEMENTATIONS.CLASS.SETTER, swgr.PROP.NAMES,`
procedure T${swgr.PARENT_ID}.Set${swgr.ID}(const AValue: ${swgr.asPath(swgr.PROP.TYPE)});
begin
   F${swgr.ID} := AValue; 
end;
`],
    [swgr.TAGS.IMPLEMENTATIONS.CLASS.REFTYPESETTER, swgr.PROP.REFNAMES,`
procedure T${swgr.PARENT_ID}.Set${swgr.ID}(const AValue: ${swgr.asPath(swgr.PROP.REFTYPE)});
begin
   if assigned(F${swgr.ID}) and (AValue<>F${swgr.ID}) then 
     freeAndNil(F${swgr.ID});
   F${swgr.ID} := AValue; 
end;
`],
[swgr.TAGS.IMPLEMENTATIONS.CLASS.LISTSETTER, swgr.PROP.LISTNAMES,`
procedure T${swgr.PARENT_ID}.Set${swgr.ID}(const AValue: ${swgr.asTag(swgr.TAGS.LISTCLASS, swgr.ID)});
begin
   F${swgr.ID} := AValue; 
end;
`],

    // Class Getters
    [swgr.TAGS.IMPLEMENTATIONS.CLASS.GETTER, swgr.PROP.NAMES,`
function T${swgr.PARENT_ID}.Get${swgr.ID}: ${swgr.asPath(swgr.PROP.TYPE)});
begin
   result := F${swgr.ID}; 
end;
`],
    [swgr.TAGS.IMPLEMENTATIONS.CLASS.REFTYPEGETTER, swgr.PROP.REFNAMES,`
function T${swgr.PARENT_ID}.Get${swgr.ID} : ${swgr.asPath(swgr.PROP.REFTYPE)});
begin
   if not assigned(F${swgr.ID}) then 
      F${swgr.ID} := ${swgr.asPath(swgr.PROP.REFTYPE)}.Create;
   result := F${swgr.ID};
end;
`],
[swgr.TAGS.IMPLEMENTATIONS.CLASS.LISTGETTER, swgr.PROP.LISTNAMES,`
function T${swgr.PARENT_ID}.Get${swgr.ID}: ${swgr.asTag(swgr.TAGS.LISTCLASS, swgr.ID)});
begin
   if not assigned(F${swgr.ID}) then 
     F${swgr.ID} := ${swgr.asTag(swgr.TAGS.LISTCLASSCONSTRUCTOR, swgr.ID)};
   F${swgr.ID} := AValue; 
end;
`],

// Class Procedures (Setters and Procedures)
    [swgr.TAGS.IMPLEMENTATIONS.CLASS.PROCEDURES, 
`        
${swgr.TAGS.IMPLEMENTATIONS.CLASS.PROCEDURE}
${swgr.TAGS.IMPLEMENTATIONS.CLASS.SETTER}
${swgr.TAGS.IMPLEMENTATIONS.CLASS.REFTYPESETTER}
${swgr.TAGS.IMPLEMENTATIONS.CLASS.LISTSETTER}
` ],

// Class Functions (Getters and Functions)
[swgr.TAGS.IMPLEMENTATIONS.CLASS.FUNCTIONS, 
`        
${swgr.TAGS.IMPLEMENTATIONS.CLASS.FUNCTION}
${swgr.TAGS.IMPLEMENTATIONS.CLASS.GETTER}
${swgr.TAGS.IMPLEMENTATIONS.CLASS.REFTYPEGETTER}
${swgr.TAGS.IMPLEMENTATIONS.CLASS.LISTGETTER}
` ],
    
    // Delphi Unit   

    // methods
    [swgr.TAGS.IMPLEMENTATIONS.CLASSES, swgr.CLASS.NAMES,
 `
 ${swgr.TAGS.IMPLEMENTATIONS.CLASS.COMMENT}    
 ${swgr.TAGS.IMPLEMENTATIONS.CLASS.CONSTRUCTORS}    
 ${swgr.TAGS.IMPLEMENTATIONS.CLASS.PROCEDURES} 
 ${swgr.TAGS.IMPLEMENTATIONS.CLASS.FUNCTIONS} 
 ${swgr.TAGS.IMPLEMENTATIONS.CLASS.DESTRUCTORS}    
   
 `   ], 


    // File
    [".", 
`unit ${swgr.TAGS.NAMES.NAMESPACE}.${swgr.TAGS.NAMES.FILESTEM};

interface

uses 
${swgr.TAGS.DECLARATIONS.PUBLIC.USES}

#IF const
${swgr.TAGS.DECLARATIONS.PUBLIC.CONSTANTS}

#IF[12] type
${swgr.TAGS.DECLARATIONS.FORWARD.INTERFACES}

${swgr.TAGS.DECLARATIONS.FORWARD.CLASSES}

${swgr.TAGS.DECLARATIONS.PUBLIC.ENUMS}

${swgr.TAGS.DECLARATIONS.PUBLIC.INTERFACES}

${swgr.TAGS.DECLARATIONS.PUBLIC.CLASSES}

${swgr.TAGS.DECLARATIONS.PUBLIC.METHODS}

#IF var
${swgr.TAGS.DECLARATIONS.PUBLIC.VARIABLES}

Implementation
#IF uses
${swgr.TAGS.DECLARATIONS.PRIVATE.USES}

${swgr.TAGS.DECLARATIONS.PRIVATE.CONSTANTS}

${swgr.TAGS.DECLARATIONS.PRIVATE.ENUMS}
  
${swgr.TAGS.DECLARATIONS.PRIVATE.INTERFACES}

${swgr.TAGS.DECLARATIONS.PRIVATE.CLASSES}

${swgr.TAGS.DECLARATIONS.PRIVATE.VARIABLES}

${swgr.TAGS.IMPLEMENTATIONS.IMPLEMENTATION}

#IF initialization
${swgr.TAGS.IMPLEMENTATIONS.INITIALIZATION}

#IF finalization
${swgr.TAGS.IMPLEMENTATIONS.FINALIZATION}

end.
   `]
];

class DelphiCodeGenTemplate extends CodeGenTemplate {
    constructor() {
        super(DelphiTemplates, "", "auto", ".pas");
    }

}
const delphi = new DelphiCodeGenTemplate();