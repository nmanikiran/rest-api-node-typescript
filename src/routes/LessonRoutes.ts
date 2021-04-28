import { Router } from 'express';
import LessonsCtrl from '../controllers/LessonsCtrl';
import { LessonValidator, lessonSchema } from '../validators/lessonValidator';

class LessonRoutes {
  router = Router();
  lessonsCtrl = new LessonsCtrl();
  lessonValidator = new LessonValidator();

  constructor() {
    this.intializeRoutes();
  }

  intializeRoutes() {

    this.router.route('/').get(this.lessonsCtrl.getAllLessons);
    this.router.route('/course/:id')
      .get(this.lessonsCtrl.getLessonByCourse);
    this.router.route('/:id').get(this.lessonsCtrl.getLessonById);
    this.router.route('/')
      .post(
        this.lessonValidator.validateBody(lessonSchema),
        this.lessonsCtrl.createLesson
      );
    this.router.route('/:id')
      .put(
        this.lessonValidator.validateBody(lessonSchema),
        this.lessonsCtrl.updateLesson
      );
    this.router.route('/:id').delete(this.lessonsCtrl.deleteLesson);
  }
}

export default new LessonRoutes().router;
