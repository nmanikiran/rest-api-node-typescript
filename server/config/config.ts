
import * as nconf from "nconf";

export function AppConfig(): void {

    nconf.argv({
        "p": {
            "alias": "http:port",
            "describe": "The port to listen"
        }
    });

    nconf.file("./config.json");

    nconf.defaults({
        "http": {
            "port": 3000
        }
    });

}