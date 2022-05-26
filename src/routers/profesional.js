import { Router } from "express";
import {
  validateProfesional,
  getProfesional,
  getProfesionales,
  postProfesional,
} from "../controllers/profesionalController.js";
const router = Router();

router.post("/api/loginProfesional", validateProfesional);
router.get("/api/profesional", getProfesionales);
router.get("/api/profesional/:idProfesional", getProfesional);
router.post("/api/profesional", postProfesional);

export default router;
