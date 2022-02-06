const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "bspsy816cno1egmpxfm4-mysql.services.clever-cloud.com",
  user: "upccsfmc7bs8fkyc",
  password: "H00zCHL3U3grhyoeANmM",
  database: "bspsy816cno1egmpxfm4",
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
module.exports = connection;
