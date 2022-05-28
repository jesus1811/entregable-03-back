import { Router } from "express";
import { getComprobanteById, getComprobanteByidProfesional } from "../controllers/comprobanteController.js";
const router = Router();

router.get("/api/comprobantes/:id", getComprobanteByidProfesional);
router.get("/api/comprobante/:id", getComprobanteById);

export default router;
