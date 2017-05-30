
import { Request, Response, RequestHandler, ErrorRequestHandler, NextFunction } from "express";
import * as winston from "winston";

winston.add(winston.transports.File, {
    filename: "server/logs/error.log",
    level: "error",
    handleExceptions: true,
    humanReadableUnhandledException: true
});

export function unCoughtErrorHandler(
    err: any,
    req: Request,
    res: Response,
    next: NextFunction) {

    winston.error(JSON.stringify(err));
    res.end({ error: err });
}

export function apiErrorHandler(err: any, req: Request, res: Response, message: string) {
    const error: object = { "Message": message, "Request": req, "Stack": err };
    winston.error(JSON.stringify(error));
    res.json({ "Message": message });
}