"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var nconf = require("nconf");
function AppConfig() {
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
exports.AppConfig = AppConfig;
//# sourceMappingURL=config.js.map