import * as Joi from 'joi';
import { Request, Response, NextFunction } from 'express';

export class LessonValidator {
  constructor() { }

  validateBody(schema) {
    return (req: Request, res: Response, next: NextFunction) => {
      const result = Joi.validate(req.body, schema);

      if (result.error) {
        return res.status(400).json(result.error);
      } else {
        if (!req['value']) {
          req['value'] = {};
        }
        if (!req['value']['body']) {
          req['value']['body'] = {};
        }
        req['value']['body'] = result.value;
        next();
      }
    };
  }
}

export const lessonSchema = Joi.object().keys({
  courseId: Joi.number().integer().required(),
  url: Joi.string().trim().uri().required(),
  description: Joi.string().trim(),
  thumbnailUrl: Joi.string().uri(),
  title: Joi.string().trim().required(),
  duration: Joi.string(),
  seqNo: Joi.number(),
  createdAt: Joi.date(),
  updatedAt: Joi.date()
});
