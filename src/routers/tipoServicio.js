import { Router } from "express";
import { getTipoServicios } from "../controllers/tipoServicioController.js";
const router = Router();

router.get("/api/tipoServicio", getTipoServicios);

export default router;
