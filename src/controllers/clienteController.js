import connection from "../settings/database.js";

export const validateCliente = (req, res) => {
  const { email, password } = req.body;
  connection.query("CALL SP_validar_cliente(?,?)", [email, password], (err, rows) => {
    rows ? res.status(200).json(rows[0]) : res.status(500).json(err);
  });
};
export const createCliente = (req, res) => {
  const { dni, nombre, apellido, correo, password, celular, foto } = req.body;
  connection.query(
    "CALL SP_registrar_cliente(?,?,?,?,?,?,?)",
    [dni, nombre, apellido, correo, password, celular, foto],
    (err, rows) => {
      rows ? res.json("agregado correctamente") : res.json(err);
    }
  );
};
export const updateCliente = (req, res) => {
  const { id } = req.params;
  const { nombre, apellido, correo, password, celular } = req.body;
  connection.query(
    "CALL SP_editar_cliente(?,?,?,?,?,?)",
    [id, nombre, apellido, correo, password, celular],
    (err, rows) => {
      rows ? res.json("datos editado correctamente") : res.json(err);
    }
  );
};

export const getClienteForProfesional = (req, res) => {
  const { id } = req.params;
  connection.query("CALL SP_listar_clienteForProfesional(?)", [id], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
