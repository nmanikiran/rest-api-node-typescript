import { Router } from 'express';
import CoursesCtrl from '../controllers/CoursesCtrl';

class CourseRoutes {
  router = Router();
  coursesCtrl = new CoursesCtrl();

  constructor() {
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.route('/').get(this.coursesCtrl.getAllCourses);
    this.router.route('/:id').get(this.coursesCtrl.getCourseDetails);
  }
}
export default new CourseRoutes().router;
