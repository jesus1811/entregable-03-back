import { Router } from "express";
import { postValoracion } from "../controllers/valoracion.controller.js";
const router = Router();

router.post("/api/valoracion", postValoracion);

export default router;
