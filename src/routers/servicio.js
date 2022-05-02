const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/servicio", (req, res) => {
  connection.query("CALL SP_listar_servicios", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});
router.get("/api/servicio/:id", (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_servicioId(?)", [id], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});
router.post("/api/servicio", (req, res) => {
  const { nombre, tipo, precio, profesional, foto } = req.body;
  connection.query(
    "CALL SP_registrar_servicio(?,?,?,?,?)",
    [nombre, tipo, precio, profesional, foto],
    (err, rows) => {
      rows ? res.json("agregado correctamente") : res.json(err);
    }
  );
});

module.exports = router;
