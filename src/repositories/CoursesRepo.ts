import { Course } from '../models/Course';
import { Lesson } from '../models/Lesson';

class CourseRepo {
  constructor() { }

  getAllCourses(options) {
    return Course.findAll(options);
  }

  getById(courseId) {
    return Course.findByPk(courseId, {
      include: [
        {
          model: Lesson,
          as: 'lessons'
        },
      ],
    });
  }
}

export default new CourseRepo();
