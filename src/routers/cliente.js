const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.post("/api/login", (req, res) => {
  const { email, password } = req.body;
  connection.query(
    "CALL SP_validar_cliente(?,?)",
    [email, password],
    (err, rows) => {
      rows ? res.json(rows[0]) : res.json(err);
    }
  );
});
router.post("/api/cliente", (req, res) => {
  const { dni, nombre, apellido, correo, password, celular, foto } = req.body;
  connection.query(
    "CALL SP_registrar_cliente(?,?,?,?,?,?,?)",
    [dni, nombre, apellido, correo, password, celular, foto],
    (err, rows) => {
      rows ? res.json("agregado correctamente") : res.json(err);
    }
  );
});
router.put("/api/cliente/:id", (req, res) => {
  const { id } = req.params;
  const { password } = req.body;
  connection.query(
    "CALL SP_editar_contraseña(?,?)",
    [id, password],
    (err, rows) => {
      rows ? res.json("Contraseña editado correctamente") : res.json(err);
    }
  );
});

module.exports = router;
