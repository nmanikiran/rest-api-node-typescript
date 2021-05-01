import { Request, Response, NextFunction } from 'express';
import { apiErrorHandler } from '../handlers/errorHandler';
import LessonRepo from '../repositories/LessonsRepo';

export default class LessonsCtrl {
  constructor() { }

  async getAllLessons(req: Request, res: Response, next: NextFunction) {
    try {
      const lessons = await LessonRepo.getAllLessons({ order: ['id'] });
      res.json(lessons);
    } catch (error) {
      apiErrorHandler(error, req, res, 'Fetch All Lessons failed.');
    }
  }

  async getLessonByCourse(req: Request, res: Response, next: NextFunction) {
    try {
      const lesson = await LessonRepo.getLessonByCourse(req.params.id);
      res.json(lesson);
    } catch (error) {
      apiErrorHandler(
        error,
        req,
        res,
        `Lessons in course ${req.params.id} failed.`,
      );
    }
  }

  async getLessonById(req: Request, res: any, next: NextFunction) {
    try {
      const result = await LessonRepo.getLessonById(req.params.id);
      if (result) {
        return res.json(result);
      } else {
        res.status(404).send(`Lesson ${req.params.id} not found.`);
      }
    } catch (error) {
      apiErrorHandler(error, req, res, `Lesson ${req.params.id} failed.`);
    }
  }

  async createLesson(req: Request, res: Response, next: NextFunction) {
    try {
      const result = await LessonRepo.createLesson(req['value']['body']);
      res.json(result);
    } catch (error) {
      apiErrorHandler(error, req, res, 'Creation of Lesson failed.');
    }
  }

  async updateLesson(req: Request, res: Response, next: NextFunction) {
    const id = parseInt(req.params.id);
    try {
      const result = await LessonRepo.updateLesson(id, req['value']['body']);
      res.json(result);
    } catch (error) {
      apiErrorHandler(
        error,
        req,
        res,
        `updation of Lesson ${req.params.id} is failed.`,
      );
    }
  }

  async deleteLesson(req: Request, res: Response, next: NextFunction) {
    const id = parseInt(req.params.id);
    try {
      const result = await LessonRepo.deleteLesson(id);
      res.json(result);
    } catch (error) {
      apiErrorHandler(
        error,
        req,
        res,
        `deletion of Lesson ${req.params.id}  is failed.`,
      );
    }
  }
}
