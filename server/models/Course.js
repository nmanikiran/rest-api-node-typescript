"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var ORM = require("sequelize");
var db_1 = require("./../db/db");
var Lesson_1 = require("./Lesson");
exports.Course = db_1.sequelize.define("Course", {
    description: ORM.STRING,
    url: ORM.STRING,
    longDescription: ORM.TEXT,
    iconUrl: ORM.STRING,
    courseListIcon: ORM.STRING,
    seqNo: ORM.INTEGER,
    comingSoon: ORM.BOOLEAN,
    isNew: ORM.BOOLEAN,
    isOngoing: ORM.BOOLEAN
});
exports.Course.hasMany(Lesson_1.Lesson, { foreignKey: "courseId" });
Lesson_1.Lesson.belongsTo(exports.Course, { foreignKey: "courseId" });
//# sourceMappingURL=Course.js.map