import { Router } from "express";
import { validateProfesional, getProfesional } from "../controllers/profesionalController.js";
const router = Router();

router.post("/api/loginProfesional", validateProfesional);
router.get("/api/profesional/:idProfesional", getProfesional);

export default router;
