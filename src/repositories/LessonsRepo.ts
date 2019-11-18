import { Lesson } from '../models/Lesson';

class LessonRepo {
  constructor() { }

  getAllLessons(options) {
    return Lesson.findAll(options);
  }

  getLessonById(id) {
    return Lesson.findByPk(id);
  }

  getLessonByCourse(id) {
    return Lesson.findAll({ where: { courseId: id } });
  }

  createLesson(props: any) {
    return Lesson.create(props);
  }

  updateLesson(id: Number, props: any) {
    return Lesson.update(props, { where: { id: id.toString() } });
  }

  deleteLesson(id: Number) {
    return Lesson.destroy({ where: { id: id.toString() } });
  }
}

export default new LessonRepo();
