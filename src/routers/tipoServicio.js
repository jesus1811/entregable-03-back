import { Router } from "express";
import connection from "../settings/database.js";
const router = Router();

router.get("/api/tipoServicio", (req, res) => {
  connection.query("CALL SP_listar_tipoServicio()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

export default router;
