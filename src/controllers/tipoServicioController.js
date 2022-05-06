import connection from "../settings/database.js";

export const getTipoServicios = (req, res) => {
  connection.query("CALL SP_listar_tipoServicio()", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
