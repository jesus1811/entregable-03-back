const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/curso", (req, res) => {
  connection.query("CALL SP_listar_curso()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

router.post("/api/curso", (req, res) => {
  const { nombre } = req.body;
  connection.query("CALL SP_agregar_curso(?)", [nombre], (err, rows) => {
    rows ? res.json("agregado correctamente") : res.json(err);
  });
});

router.put("/api/curso/:id", (req, res) => {
  const { id } = req.params;
  const { nombre } = req.body;
  connection.query(
    "CALL SP_actualizar_curso(?,?)",
    [id, nombre],
    (err, rows) => {
      rows ? res.json("actualizado correctamente") : res.json(err);
    }
  );
});

router.delete("/api/curso/:id", (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_eliminar_curso(?)", [id], (err, rows) => {
    rows ? res.json("eliminado correctamente") : res.json(err);
  });
});
module.exports = router;
