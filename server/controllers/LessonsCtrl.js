"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var LessonsRepo_1 = require("./../repositories/LessonsRepo");
var LessonRoutes = (function () {
    function LessonRoutes(router) {
        router.post("/", this.createLesson.bind(this));
        router.patch("/:id", this.patchLesson.bind(this));
        router.delete("/:id", this.deleteLesson.bind(this));
    }
    LessonRoutes.prototype.createLesson = function (req, res, next) {
        console.log("add leasson :", req.body);
        LessonsRepo_1.default.createLesson(req.body)
            .then(function (result) { res.json(result); })
            .catch(function (err) { res.json({ error: err }); });
    };
    LessonRoutes.prototype.patchLesson = function (req, res, next) {
        LessonsRepo_1.default.updateLesson(req.params.id, req.body)
            .then(function (result) { res.json(result); })
            .catch(function (err) { res.json({ error: err }); });
    };
    LessonRoutes.prototype.deleteLesson = function (req, res, next) {
        LessonsRepo_1.default.deleteLesson(req.params.id)
            .then(function (result) { res.json(result); })
            .catch(function (err) { res.json({ error: err }); });
    };
    return LessonRoutes;
}());
exports.default = LessonRoutes;
//# sourceMappingURL=LessonsCtrl.js.map