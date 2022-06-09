import { createConnection } from "mysql2";

const connection = createConnection({
  host: "containers-us-west-69.railway.app",
  user: "root",
  password: "iwX0LMbBav8DvM3cPWae",
  database: "railway",
  port: 6153,
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
export default connection;
