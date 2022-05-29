import connection from "../settings/database.js";

export const getPaises = (req, res) => {
  connection.query("CALL SP_listar_paises()", (err, rows) => {
    rows ? res.status(200).json(rows[0]) : res.status(500).json(err);
  });
};
