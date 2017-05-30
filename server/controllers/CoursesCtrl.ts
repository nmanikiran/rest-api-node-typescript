
import { Router, Request, Response, NextFunction } from "express";
import CourseRepo from "./../repositories/CoursesRepo";

import { apiErrorHandler } from "./../handlers/errorHandler";

export default class CoursesRoutes {

    constructor(router: Router) {
        router.get("/", this.getAllCourses.bind(this));
        router.get("/:id", this.getCourseDetails.bind(this));
    }

    private getAllCourses(req: Request, res: Response, next: NextFunction) {
        CourseRepo.getAllCourses({ order: ["seqNo"] })
            .then((result) => res.json(result))
            .catch((err) => { apiErrorHandler(err, req, res, "Fetch All Courses failed."); });
    }

    private getCourseDetails(req: Request, res: Response, next: NextFunction) {

        CourseRepo.getById(req.params.id)
            .then((result) => res.json(result))
            .catch((err) => { apiErrorHandler(err, req, res, "Course not found."); });
    }
}
