# Simple OpenAPI CodeGen

This is a javascript web page that can be added as a static file to your Api Server.

It allows you to generate customized code template directly from the Swagger Endpoint in your api.

Developed specifically for a Delphi project, because all the code generates we tried produced output 
dependent on tools we did not want to use.  

This tool allows you generate code for any purpose you want using simple template rules.

## Templates

The codegen runs from simple Javascript / JSON templates and uses _JSONPath_ expressions to identify 
dynamically construct any language code you want.


## View the generated code 
To view the current delphi code generator (we are really in early days yet - so we are definitely incomplete).

To use the tool:
  + Open in VS Code, select "codegendelphi.html"
  + Run LiveServer
 
Start a web server in the folder and request "codegendelphi.html"

At this stage, the page opens to the **PetStore** api with a basic delphi template.




