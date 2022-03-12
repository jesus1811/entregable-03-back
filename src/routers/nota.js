const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/nota", (req, res) => {
  connection.query("CALL SP_listar_nota()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
});

router.post("/api/nota", (req, res) => {
  const { nota1, nota2, nota3, idCurso, dniEstudiante, dniUsuario } = req.body;
  connection.query(
    "CALL SP_agregar_nota(?,?,?,?,?,?,?)",
    [
      nota1,
      nota2,
      nota3,
      (nota1 + nota2 + nota3) / 3,
      idCurso,
      dniEstudiante,
      dniUsuario,
    ],
    (err, rows) => {
      rows ? res.json("agregado correctamente") : res.json(err);
    }
  );
});

router.put("/api/nota/:id", (req, res) => {
  const { id } = req.params;
  const { nota1, nota2, nota3, idCurso, dniEstudiante, dniUsuario } = req.body;
  connection.query(
    "CALL SP_actualizar_nota(?,?,?,?,?,?,?,?)",
    [
      id,
      nota1,
      nota2,
      nota3,
      (nota1 + nota2 + nota3) / 3,
      idCurso,
      dniEstudiante,
      dniUsuario,
    ],
    (err, rows) => {
      rows ? res.json("actualizado correctamente") : res.json(err);
    }
  );
});

router.delete("/api/nota/:id", (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_eliminar_nota(?)", [id], (err, rows) => {
    rows ? res.json("eliminado correctamente") : res.json(err);
  });
});
module.exports = router;
