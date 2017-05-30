"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var bodyParser = require("body-parser");
var morgan = require("morgan");
var fs = require("fs");
var path = require("path");
var config_1 = require("./config/config");
var errorHandler_1 = require("./handlers/errorHandler");
var routes_1 = require("./routes");
var Server = (function () {
    function Server(app) {
        this.config(app);
        var routes = new routes_1.default(app);
    }
    Server.prototype.config = function (app) {
        config_1.AppConfig();
        var accessLogStream = fs.createWriteStream(path.join(__dirname, "./logs/access.log"), { flags: "a" });
        app.use(morgan("combined", { stream: accessLogStream }));
        app.use(bodyParser.urlencoded({ extended: true }));
        app.use(bodyParser.json());
        app.use(errorHandler_1.unCoughtErrorHandler);
    };
    return Server;
}());
exports.default = Server;
//# sourceMappingURL=main.js.map