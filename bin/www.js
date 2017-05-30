"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express = require("express");
var nconf = require("nconf");
var main_1 = require("../server/main");
var app = express();
var server = new main_1.default(app);
var port = nconf.get("http:port");
app.listen(port, "localhost", function (err) {
    if (err) {
        return err;
    }
    console.log("Server running on : http://localhost:" + port);
});
//# sourceMappingURL=www.js.map