class IfLine {

   reset() {
        this.lineNo = -1; 
        this.count = 0; 
        this.content = "";
        this.blankLineCount = 0;
        this.outputAndReset = false;
   }

    constructor(text, lineNo) {
        this.reset();
        this.isIfLine(text, lineNo);
    }

    isIfLine(line, lineNo) {
       
        if (line && line.trim().startsWith('#IF'))
        {
            this.lineNo = lineNo;
            
            let firstSpace = line.indexOf(' ');
            this.content = line.substring(firstSpace).trim();
            let count = parseInt(
                line.substring(3,firstSpace)
                .replace('[','')
                .replace(']','')
                .trim());
            
            this.count = (count) ? count : 1; // 1 blank line allowed by default
        }
        return this.lineNo>=0;
    }

    getContent(line, lineNo){

        let currentline = this.lineNo;
        if (this.isIfLine(line,lineNo)) return "";

        
    }

}

class CodeGen {
    constructor()
    {

    }

    setElementText(id, text) {
        let el = document.getElementById(id);
        if (el) el.innerText =  text;
    }
    
}

const cg = new CodeGen();