import { Router } from "express";
import { createCliente, updateCliente, validarCliente } from "../controllers/clienteControllers.js";
const router = Router();

router.post("/api/login", validarCliente);
router.post("/api/cliente", createCliente);
router.put("/api/cliente/:id", updateCliente);

export default router;
