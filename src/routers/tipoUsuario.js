const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/tipo_usuario", (req, res) => {
  connection.query("CALL SP_listar_tipo_usuario()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

router.post("/api/tipo_usuario", (req, res) => {
  const { tipo } = req.body;
  connection.query("CALL SP_agregar_tipo_usuario(?)", [tipo], (err, rows) => {
    rows ? res.json("agregado correctamente") : res.json(err);
  });
});

router.put("/api/tipo_usuario/:id", (req, res) => {
  const { id } = req.params;
  const { tipo } = req.body;
  connection.query(
    "CALL SP_actualizar_tipoUsuario(?,?)",
    [id, tipo],
    (err, rows) => {
      rows ? res.json("actualizado correctamente") : res.json(err);
    }
  );
});

router.delete("/api/tipo_usuario/:id", (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_eliminar_tipoUsuario(?)", [id], (err, rows) => {
    rows ? res.json("eliminado correctamente") : res.json(err);
  });
});

module.exports = router;
