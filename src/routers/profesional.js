import { Router } from "express";
import { createProfesional } from "../controllers/profesionalController.js";
const router = Router();

router.post("/api/loginProfesional", createProfesional);

export default router;
