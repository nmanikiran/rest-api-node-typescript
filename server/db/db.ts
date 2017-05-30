
import * as ORM from "sequelize";
import { Sequelize, LoggingOptions } from "sequelize";

const dbUrl: string = "postgres://postgres:postgres@localhost:5432/complete-typescript-course";

const options: LoggingOptions = { benchmark: true, logging: console.log };

export const sequelize: Sequelize = new ORM(dbUrl, options);

