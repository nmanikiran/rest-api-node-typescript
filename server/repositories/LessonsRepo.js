"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Lesson_1 = require("./../models/Lesson");
var LessonRepo = (function () {
    function LessonRepo() {
        console.log("Lessons Repo...");
    }
    LessonRepo.prototype.createLesson = function (props) {
        return Lesson_1.Lesson.create(props);
    };
    LessonRepo.prototype.updateLesson = function (id, props) {
        return Lesson_1.Lesson.update(props, { where: { id: id } });
    };
    LessonRepo.prototype.deleteLesson = function (id) {
        return Lesson_1.Lesson.destroy({ where: { id: id } });
    };
    return LessonRepo;
}());
exports.default = new LessonRepo();
//# sourceMappingURL=LessonsRepo.js.map