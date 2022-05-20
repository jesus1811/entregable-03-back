import connection from "../settings/database.js";

export const validateProfesional = (req, res) => {
  const { email, password } = req.body;
  connection.query("CALL SP_validar_profesional(?,?)", [email, password], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};

export const getProfesional = (req, res) => {
  const { idProfesional } = req.params;
  connection.query("CALL SP_listar_profesionalId(?)", [idProfesional], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
