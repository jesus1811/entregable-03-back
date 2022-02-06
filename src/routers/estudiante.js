const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/estudiante", (req, res) => {
  connection.query("CALL SP_listar_estudiante()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

router.post("/api/estudiante/:dni", (req, res) => {
  const { dni } = req.params;
  const { nombre, apellido } = req.body;
  connection.query(
    "CALL SP_agregar_estudiante(?,?,?)",
    [dni, nombre, apellido],
    (err, rows) => {
      rows ? res.json("agregado correctamente") : res.json(err);
    }
  );
});

router.put("/api/estudiante/:dni", (req, res) => {
  const { dni } = req.params;
  const { nombre, apellido } = req.body;
  connection.query(
    "CALL SP_actualizar_estudiante(?,?,?)",
    [dni, nombre, apellido],
    (err, rows) => {
      rows ? res.json("actualizado correctamente") : res.json(err);
    }
  );
});

router.delete("/api/estudiante/:dni", (req, res) => {
  const { dni } = req.params;
  connection.query("CALL SP_eliminar_estudiante(?)", [dni], (err, rows) => {
    rows ? res.json("eliminado correctamente") : res.json(err);
  });
});

module.exports = router;
