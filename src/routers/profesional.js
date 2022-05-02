const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.post("/api/loginProfesional", (req, res) => {
  const { email, password } = req.body;
  connection.query(
    "CALL SP_validar_profesional(?,?)",
    [email, password],
    (err, rows) => {
      rows ? res.json(rows[0]) : res.json(err);
    }
  );
});

module.exports = router;