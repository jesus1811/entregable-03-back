import connection from "../settings/database.js";

export const getComprobanteByidProfesional = (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_comprobanteElectronico(?)", [id], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
