import { createConnection } from "mysql";

const connection = createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "bd_montalvo",
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
export default connection;
