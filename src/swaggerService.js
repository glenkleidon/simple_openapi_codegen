
function currentUrl() {
    const url = window.location.href;
    let fullPath = url.split("/");
    let name = fullPath[fullPath.length - 1];
    return {
        path: url.substring(0, url.length - name.length),
        name: name
    }
}

async function getJSON(url) {
    console.log(`Fetching ${url}`);
    const response = await fetch(url);
    const asJson = await response.json();
    return asJson;
}


class codeGenService {

    constructor(url) {
        this.apiJSON = null;
        this.url = url;
    }

    fetch(onJSON) {
        getJSON(this.url).then(
            (json) => {
                this.apiJSON = json;
                if (onJSON) onJSON(json);
            }
        );
    }
}

class SwaggerService extends codeGenService {

    path() {
        return (this.url) ? this.url : currentUrl().path + "swagger/v1/swagger.json";
    }

    constructor (url)  {
        super(url);
        this.url = this.path();
    }

    adjustSwagger(onSwagger) {

    }

    swagger(onSwagger) {
        this.fetch(onSwagger);
    }
}

