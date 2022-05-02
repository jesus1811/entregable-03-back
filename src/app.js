const express = require("express");
const app = express();
const cors = require("cors");
app.use(express.json());
app.use(cors());

app.use(require("./routers/cliente"));
app.use(require("./routers/servicio"));
app.use(require("./routers/tipoServicio"));
app.use(require("./routers/profesional"));

app.get("/", (req, res) => {
  res.json("hello word");
});

module.exports = app;
