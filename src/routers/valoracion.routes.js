import { Router } from "express";
import { getValoraciones, postValoracion } from "../controllers/valoracion.controller.js";
const router = Router();

router.post("/api/valoracion", postValoracion);
router.get("/api/valoraciones/:id", getValoraciones);

export default router;
