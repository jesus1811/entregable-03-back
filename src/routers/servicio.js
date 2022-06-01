import { Router } from "express";
import {
  getServicio,
  getServicioForProfesional,
  getServicios,
  postServicio,
  putServicio,
} from "../controllers/servicioController.js";
const router = Router();

router.get("/api/servicio", getServicios);
router.get("/api/servicio/:id", getServicio);
router.get("/api/serviciosForProfesional/:idProfesional", getServicioForProfesional);
router.post("/api/servicio", postServicio);
router.put("/api/servicio/:id", putServicio);

export default router;
