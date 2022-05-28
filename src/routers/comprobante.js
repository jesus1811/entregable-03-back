import { Router } from "express";
import {
  getComprobanteById,
  getComprobanteByidProfesional,
  postComprobante,
} from "../controllers/comprobanteController.js";
const router = Router();

router.get("/api/comprobantes/:id", getComprobanteByidProfesional);
router.get("/api/comprobante/:id", getComprobanteById);
router.post("/api/comprobante", postComprobante);

export default router;
