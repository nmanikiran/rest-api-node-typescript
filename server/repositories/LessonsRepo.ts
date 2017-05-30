
import { Lesson } from "./../models/Lesson";
import { Course } from "./../models/Course";

class LessonRepo {

    constructor() {
        console.log("Lessons Repo...");
    }

    createLesson(props: any) {
        return Lesson.create(props);
    }
    updateLesson(id: Number, props: any) {
        return Lesson.update(props, { where: { id } });
    }
    deleteLesson(id: Number) {
        return Lesson.destroy({ where: { id } });
    }
}

export default new LessonRepo();