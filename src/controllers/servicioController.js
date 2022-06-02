import connection from "../settings/database.js";

export const getServicios = (req, res) => {
  connection.query("CALL SP_listar_servicios", (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
export const getServicio = (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_servicioId(?)", [id], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
export const getServicioForProfesional = (req, res) => {
  const { idProfesional } = req.params;
  connection.query("CALL SP_listar_antecedentesServicios(?)", [idProfesional], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
export const postServicio = (req, res) => {
  const { nombre, descripcion, tipo, precio, profesional, foto } = req.body;
  connection.query(
    "CALL SP_registrar_servicio(?,?,?,?,?,?)",
    [nombre, descripcion, tipo, precio, profesional, foto],
    (err, rows) => {
      rows ? res.json("agregado correctamente") : res.json(err);
    }
  );
};
export const putServicio = (req, res) => {
  const { id } = req.params;
  const { nombre, descripcion, precio, descuento } = req.body;
  connection.query("CALL SP_editar_servicio(?,?,?,?,?)", [id, nombre, descripcion, precio, descuento], (err, rows) => {
    rows ? res.json("Editado Correctamente") : res.json(err);
  });
};
