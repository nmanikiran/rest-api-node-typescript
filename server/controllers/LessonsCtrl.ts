import { NextFunction, Request, Response, Router } from 'express';

import { apiErrorHandler } from '../handlers/errorHandler';
import LessonRepo from '../repositories/LessonsRepo';

export default class LessonRoutes {

    constructor() { }

    getAllLessons(req: Request, res: Response, next: NextFunction) {
        LessonRepo.getAllLessons({ order: ["seqNo"] })
            .then((result) => res.json(result))
            .catch((err) => { apiErrorHandler(err, req, res, "Fetch All Lessons failed."); });
    }

    getLessonByCourse(req: Request, res: Response, next: NextFunction) {

        LessonRepo.getLessonByCourse(req.params.id)
            .then((result) => res.json(result))
            .catch((err) => { apiErrorHandler(err, req, res, "Fetch All Lessons failed."); });
    }

    getLessonById(req: Request, res: Response, next: NextFunction) {
        LessonRepo.getLessonById(req.params.id)
            .then((result) => res.json(result))
            .catch((err) => { apiErrorHandler(err, req, res, `Lesson ${req.params.id} not found.`); });
    }

    createLesson(req: Request, res: Response, next: NextFunction) {
        LessonRepo.createLesson(req['value']['body'])
            .then((result) => { res.json(result); })
            .catch((err) => { apiErrorHandler(err, req, res, "Creation of Lesson failed."); });
    }

    updateLesson(req: Request, res: Response, next: NextFunction) {
        LessonRepo.updateLesson(req.params.id, req['value']['body'])
            .then((result) => { res.json(result); })
            .catch((err) => { apiErrorHandler(err, req, res, `updation of Lesson ${req.params.id}  failed.`); });
    }

    deleteLesson(req: Request, res: Response, next: NextFunction) {
        LessonRepo.deleteLesson(req.params.id)
            .then((result) => { res.json(result); })
            .catch((err) => { apiErrorHandler(err, req, res, `deletion of Lesson ${req.params.id}  failed.`); });
    }
}
