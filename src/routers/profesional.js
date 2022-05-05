import { Router } from "express";
import connection from "../settings/database.js";
const router = Router();

router.post("/api/loginProfesional", (req, res) => {
  const { email, password } = req.body;
  connection.query("CALL SP_validar_profesional(?,?)", [email, password], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

export default router;
