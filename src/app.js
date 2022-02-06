const express = require("express");
const app = express();
const cors = require("cors");
app.use(express.json());
app.use(cors());

app.use(require("./routers/tipoUsuario"));
app.use(require("./routers/usuario"));
app.use(require("./routers/curso"));
app.use(require("./routers/estudiante"));
app.use(require("./routers/nota"));

app.get("/", (req, res) => {
  res.json("hello word");
});

module.exports = app;
