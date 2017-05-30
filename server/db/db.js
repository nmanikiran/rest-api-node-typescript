"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var ORM = require("sequelize");
var dbUrl = "postgres://postgres:postgres@localhost:5432/complete-typescript-course";
var options = { benchmark: true, logging: console.log };
exports.sequelize = new ORM(dbUrl, options);
//# sourceMappingURL=db.js.map