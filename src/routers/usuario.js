const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/usuario", (req, res) => {
  connection.query("CALL SP_listar_usuario()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

router.post("/api/usuario/:dni", (req, res) => {
  const { dni } = req.params;
  const { nombre, apellido, correo, contrasena, idTipo } = req.body;
  connection.query(
    "CALL SP_agregar_usuario(?,?,?,?,?,?)",
    [dni, nombre, apellido, correo, contrasena, idTipo],
    (err, rows) => {
      rows ? res.json("usuario agregado correctamente") : res.json(err);
    }
  );
});

router.put("/api/usuario/:dni", (req, res) => {
  const { dni } = req.params;
  const { nombre, apellido, correo, contrasena, idTipo } = req.body;
  connection.query(
    "CALL SP_actualizar_usuario(?,?,?,?,?,?)",
    [dni, nombre, apellido, correo, contrasena, idTipo],
    (err, rows) => {
      rows ? res.json("actualizado correctamente") : res.json(err);
    }
  );
});

router.delete("/api/usuario/:id", (req, res) => {
  const { dni } = req.params;
  connection.query("CALL SP_elimminar_usuario(?)", [dni], (err, rows) => {
    rows ? res.json("eliminado correctamente") : res.json(err);
  });
});

module.exports = router;
