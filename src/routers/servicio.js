const express = require("express");
const router = express.Router();
const connection = require("../settings/database");

router.get("/api/servicio", (req, res) => {
  connection.query(
    "CALL SP_listar_servicios",
    (err, rows) => {
      rows ? res.json(rows[0]) : res.json(err);
    }
  );
});

module.exports = router;