import { createConnection } from "mysql";

const connection = createConnection({
  host: "containers-us-west-40.railway.app",
  user: "root",
  password: "czpX58wO1Ey7ySyMmVI1",
  database: "railway",
  port: 7069,
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
export default connection;
