import { Router } from "express";
import { getComprobanteByidProfesional } from "../controllers/comprobanteController.js";
const router = Router();

router.get("/api/comprobantes/:id", getComprobanteByidProfesional);

export default router;
