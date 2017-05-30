"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var winston = require("winston");
winston.add(winston.transports.File, {
    filename: "server/logs/error.log",
    level: "error"
});
function unCoughtErrorHandler(err, req, res, next) {
    winston.error(JSON.stringify(err));
    res.end({ error: err });
}
exports.unCoughtErrorHandler = unCoughtErrorHandler;
function apiErrorHandler(err, req, res, message) {
    var error = { "Message": message, "Request": req, "Stack": err };
    winston.error(JSON.stringify(error));
    // res.json({ "Message": message });
}
exports.apiErrorHandler = apiErrorHandler;
//# sourceMappingURL=errorHandler.js.map