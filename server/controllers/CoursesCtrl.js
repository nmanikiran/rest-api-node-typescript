"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var CoursesRepo_1 = require("./../repositories/CoursesRepo");
var errorHandler_1 = require("./../handlers/errorHandler");
var CoursesRoutes = (function () {
    function CoursesRoutes(router) {
        router.get("/", this.getAllCourses.bind(this));
        router.get("/:id", this.getCourseDetails.bind(this));
    }
    CoursesRoutes.prototype.getAllCourses = function (req, res, next) {
        CoursesRepo_1.default.getAllCourses({ order: ["seqNo"] })
            .then(function (result) { return res.json(result); })
            .catch(function (err) { errorHandler_1.apiErrorHandler(err, req, res, "Fetch All Courses failed."); });
    };
    CoursesRoutes.prototype.getCourseDetails = function (req, res, next) {
        CoursesRepo_1.default.getById(req.params.id)
            .then(function (result) { return res.json(result); })
            .catch(function (err) { errorHandler_1.apiErrorHandler(err, req, res, "Course not found."); });
    };
    return CoursesRoutes;
}());
exports.default = CoursesRoutes;
//# sourceMappingURL=CoursesCtrl.js.map