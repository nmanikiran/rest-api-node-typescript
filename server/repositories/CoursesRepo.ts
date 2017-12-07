import { Course } from '../models/Course';
import { Lesson } from '../models/Lesson';

class CourseRepo {

    constructor() {    }

    getAllCourses(options) {
        return Course.findAll(options);
    }

    getById(courseId) {
        return Course.findById(courseId, {
            include: [
                {
                    model: Lesson
                }
            ]
        });
    }
}

export default new CourseRepo();