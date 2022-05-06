import connection from "../settings/database.js";

export const validarCliente = (req, res) => {
  const { email, password } = req.body;
  //   if (email == null && password == null) {
  //     return res.status(400).json("los campos estan vacios");
  //   } else if (email == null) {
  //     return res.status(400).json("el campo email esta vacio");
  //   } else if (password == null) {
  //     return res.status(400).json("el campo password esta vacio");
  //   }
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
  const { password } = req.body;
  connection.query("CALL SP_editar_contraseña(?,?)", [id, password], (err, rows) => {
    rows ? res.json("Contraseña editado correctamente") : res.json(err);
  });
};
