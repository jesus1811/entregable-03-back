import { Router } from "express";
import { createCliente, updateCliente, validateCliente } from "../controllers/clienteController.js";
const router = Router();

router.post("/api/login", validateCliente);
router.post("/api/cliente", createCliente);
router.put("/api/cliente/:id", updateCliente);

export default router;
