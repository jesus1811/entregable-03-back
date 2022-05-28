import connection from "../settings/database.js";

export const getComprobanteByidProfesional = (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_comprobanteElectronico(?)", [id], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
export const getComprobanteById = (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_comprobanteElectronicobyId(?)", [id], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
export const postComprobante = (req, res) => {
  const { fecha, idCliente, idMetodo, idServicio } = req.body;
  connection.query("CALL SP_agregar_compra(?,?,?,?)", [fecha, idCliente, idMetodo, idServicio], (err, rows) => {
    rows ? res.json("Compra Exitosa") : res.json(err);
  });
};
