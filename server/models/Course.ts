
import * as ORM from "sequelize";
import { sequelize } from "./../db/db";
import { Lesson } from "./Lesson";

export const Course = sequelize.define("Course", {
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

Course.hasMany(Lesson, { foreignKey: "courseId" });
Lesson.belongsTo(Course, { foreignKey: "courseId" });