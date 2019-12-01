import { NextFunction, Request, Response, Router } from 'express';
import { apiErrorHandler } from '../handlers/errorHandler';
import LessonRepo from '../repositories/LessonsRepo';

export default class LessonRoutes {
  constructor() {}

  getAllLessons(req: Request, res: Response, next: NextFunction) {
    LessonRepo.getAllLessons({ order: ['id'] })
      .then(result => res.json(result))
      .catch(err => {
        apiErrorHandler(err, req, res, 'Fetch All Lessons failed.');
      });
  }

  getLessonByCourse(req: Request, res: Response, next: NextFunction) {
    LessonRepo.getLessonByCourse(req.params.id)
      .then(result => res.json(result))
      .catch(err => {
        apiErrorHandler(
          err,
          req,
          res,
          `Lessons in course ${req.params.id} failed.`,
        );
      });
  }

  getLessonById(req: Request, res: any, next: NextFunction) {
    LessonRepo.getLessonById(req.params.id)
      .then(result => {
        if (result) {
          return res.json(result);
        } else {
          res.status(404).send(`Lesson ${req.params.id} not found.`);
        }
      })
      .catch(err => {
        apiErrorHandler(err, req, res, `Lesson ${req.params.id} failed.`);
      });
  }

  createLesson(req: Request, res: Response, next: NextFunction) {
    LessonRepo.createLesson(req['value']['body'])
      .then(result => res.json(result))
      .catch(err => {
        apiErrorHandler(err, req, res, 'Creation of Lesson failed.');
      });
  }

  updateLesson(req: Request, res: Response, next: NextFunction) {
    const id = parseInt(req.params.id);
    LessonRepo.updateLesson(id, req['value']['body'])
      .then(result => res.json(result))
      .catch(err => {
        apiErrorHandler(
          err,
          req,
          res,
          `updation of Lesson ${req.params.id} is failed.`,
        );
      });
  }

  deleteLesson(req: Request, res: Response, next: NextFunction) {
    const id = parseInt(req.params.id);
    LessonRepo.deleteLesson(id)
      .then(result => res.json(result))
      .catch(err => {
        apiErrorHandler(
          err,
          req,
          res,
          `deletion of Lesson ${req.params.id}  is failed.`,
        );
      });
  }
}
