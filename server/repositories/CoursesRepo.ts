
import { Lesson } from "./../models/Lesson";
import { Course } from "./../models/Course";

class CourseRepo {

    constructor() {
        console.log("Courses Repo...");
    }

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