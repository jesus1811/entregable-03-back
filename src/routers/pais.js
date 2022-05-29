import { Router } from "express";
import { getPaises } from "../controllers/paisController.js";
const router = Router();

router.get("/api/paises",getPaises);

export default router;
