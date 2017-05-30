"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var db_1 = require("./../db/db");
var ORM = require("sequelize");
exports.Lesson = db_1.sequelize.define("Lesson", {
    url: ORM.STRING,
    description: ORM.STRING,
    duration: ORM.STRING,
    seqNo: ORM.INTEGER,
    courseId: ORM.INTEGER,
    pro: ORM.BOOLEAN,
    tags: ORM.STRING,
    gitHubUrl: ORM.STRING
});
//# sourceMappingURL=Lesson.js.map