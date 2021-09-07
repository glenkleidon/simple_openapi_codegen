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