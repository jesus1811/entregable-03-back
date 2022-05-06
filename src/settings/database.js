import { createConnection } from "mysql";

const connection = createConnection({
  host: "b8tnmbvalnva3ejnhh47-mysql.services.clever-cloud.com",
  user: "uh2jyy14bev02m6e",
  password: "CF5NfhRm6XjjZoqOQadt",
  database: "b8tnmbvalnva3ejnhh47",
});
connection.connect((err) => {
  if (err) throw err;
  console.log("Conexion exitosa");
});
export default connection;
