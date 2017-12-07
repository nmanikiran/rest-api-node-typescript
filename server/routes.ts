
import { Application, Request, Response, NextFunction, Router } from "express";
import CoursesCtrl from "./controllers/CoursesCtrl";
import LessonsCtrl from "./controllers/LessonsCtrl";
import { LessonValidator, lessonSchema } from './validators/lessonValidator';

export default class Routes {

    lessonsCtrl = new LessonsCtrl();
    coursesCtrl = new CoursesCtrl();

    lessonValidator = new LessonValidator();

    constructor(app: Application) {

        //course reoutes
        app.route("/api/courses/").get(this.coursesCtrl.getAllCourses);
        app.route("/api/courses/:id").get(this.coursesCtrl.getCourseDetails);

        // lesson routes
        app.route("/api/lessons").get(this.lessonsCtrl.getAllLessons);
        app.route("/api/lessons/course/:id").get(this.lessonsCtrl.getLessonByCourse);
        app.route("/api/lessons/:id").get(this.lessonsCtrl.getLessonById);
        app.route("/api/lessons").post(this.lessonValidator.validateBody(lessonSchema), this.lessonsCtrl.createLesson);
        app.route("/api/lessons/:id").put(this.lessonValidator.validateBody(lessonSchema), this.lessonsCtrl.updateLesson);
        app.route("/api/lessons/:id").delete(this.lessonsCtrl.deleteLesson);
    }
}