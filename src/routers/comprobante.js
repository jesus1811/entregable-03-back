import { Router } from "express";
import { getComprobanteByidProfesional } from "../controllers/comprobante.js";
const router = Router();

router.get("/api/comprobantes/:id", getComprobanteByidProfesional);

export default router;
