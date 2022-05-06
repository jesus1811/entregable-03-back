import connection from "../settings/database.js";
export const createProfesional = (req, res) => {
  const { email, password } = req.body;
  connection.query("CALL SP_validar_profesional(?,?)", [email, password], (err, rows) => {
    rows ? res.json(rows[0]) : res.json(err);
  });
};
