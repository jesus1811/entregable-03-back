import { Router } from "express";
import { createProfesional, getProfesional } from "../controllers/profesionalController.js";
const router = Router();

router.post("/api/loginProfesional", createProfesional);
router.get("/api/profesional/:idProfesional", getProfesional);

export default router;
