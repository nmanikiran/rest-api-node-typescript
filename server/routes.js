"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var CoursesCtrl_1 = require("./controllers/CoursesCtrl");
var LessonsCtrl_1 = require("./controllers/LessonsCtrl");
var Routes = (function () {
    function Routes(app) {
        this.router = express_1.Router();
        var coursesRoutes = new CoursesCtrl_1.default(this.router);
        var lessonRoutes = new LessonsCtrl_1.default(this.router);
        app.use("/api/lesson", this.router);
        app.use("/api/courses", this.router);
    }
    return Routes;
}());
exports.default = Routes;
//# sourceMappingURL=routes.js.map