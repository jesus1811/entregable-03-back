import connection from "../settings/database.js";

export const postValoracion = (req, res) => {
  const { comentario, idServicio, idCliente } = req.body;
  connection.query("CALL SP_registrar_valoracion(?,?,?)", [comentario, idServicio, idCliente], (err, rows) => {
    err ? res.json(err) : res.json("Agregado Correctamente");
  });
};
export const getValoraciones = (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_valoracion(?)", [id], (err, rows) => {
    err ? res.json(err) : res.json(rows[0]);
  });
};
