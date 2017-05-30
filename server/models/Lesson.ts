
import { sequelize } from "./../db/db";
import * as ORM from "sequelize";

export const Lesson = sequelize.define("Lesson", {
    url: ORM.STRING,
    description: ORM.STRING,
    duration: ORM.STRING,
    seqNo: ORM.INTEGER,
    courseId: ORM.INTEGER,
    pro: ORM.BOOLEAN,
    tags: ORM.STRING,
    gitHubUrl: ORM.STRING
});


