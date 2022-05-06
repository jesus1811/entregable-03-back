import { Router } from "express";
import { getServicio, getServicios, postServicio } from "../controllers/servicioController.js";
const router = Router();

router.get("/api/servicio", getServicios);
router.get("/api/servicio/:id", getServicio);
router.post("/api/servicio", postServicio);

export default router;
