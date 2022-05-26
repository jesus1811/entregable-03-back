import { Router } from "express";
import {
  validateProfesional,
  getProfesional,
  getProfesionales,
  postProfesional,
  putProfesional,
} from "../controllers/profesionalController.js";
const router = Router();

router.post("/api/loginProfesional", validateProfesional);
router.get("/api/profesional", getProfesionales);
router.get("/api/profesional/:idProfesional", getProfesional);
router.post("/api/profesional", postProfesional);
router.put("/api/profesional/:id", putProfesional);

export default router;
