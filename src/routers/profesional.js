import { Router } from "express";
import { validateProfesional, getProfesional, getProfesionales } from "../controllers/profesionalController.js";
const router = Router();

router.post("/api/loginProfesional", validateProfesional);
router.get("/api/profesional", getProfesionales);
router.get("/api/profesional/:idProfesional", getProfesional);

export default router;
