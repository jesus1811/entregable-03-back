const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "bd_montalvo",
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
module.exports = connection;
