
import { Application, Request, Response, NextFunction, Router } from "express";
import Courses from "./controllers/CoursesCtrl";
import Lessons from "./controllers/LessonsCtrl";

export default class Routes {

    public router: Router;

    constructor(app: Application) {

        this.router = Router();
        var coursesRoutes: Courses = new Courses(this.router);
        var lessonRoutes: Lessons = new Lessons(this.router);

        app.use("/api/lesson", this.router);
        app.use("/api/courses", this.router);
    }
}