import { createConnection } from "mysql2";

const connection = createConnection({
  host: "containers-us-west-54.railway.app",
  user: "root",
  password: "irO8fUBJUF3Myx0oGWHN",
  database: "b8tnmbvalnva3ejnhh47",
  port: 7328,
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
export default connection;
