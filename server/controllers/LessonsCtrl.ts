
import { Router, Request, Response, NextFunction } from "express";
import LessonRepo from "./../repositories/LessonsRepo";

export default class LessonRoutes {

    constructor(router: Router) {
        router.post("/", this.createLesson.bind(this));
        router.patch("/:id", this.patchLesson.bind(this));
        router.delete("/:id", this.deleteLesson.bind(this));
    }
    private createLesson(req: Request, res: Response, next: NextFunction) {
        console.log("add leasson :", req.body);
        LessonRepo.createLesson(req.body)
            .then((result) => { res.json(result); })
            .catch((err) => { res.json({ error: err }); });
    }
    private patchLesson(req: Request, res: Response, next: NextFunction) {
        LessonRepo.updateLesson(req.params.id, req.body)
            .then((result) => { res.json(result); })
            .catch((err) => { res.json({ error: err }); });
    }
    private deleteLesson(req: Request, res: Response, next: NextFunction) {
        LessonRepo.deleteLesson(req.params.id)
            .then((result) => { res.json(result); })
            .catch((err) => { res.json({ error: err }); });
    }
}