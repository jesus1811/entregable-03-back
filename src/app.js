// const express = require("express");
import express from "express";
import cors from "cors";
import cliente from "./routers/cliente.js";
import servicio from "./routers/servicio.js";
import tipoServicio from "./routers/tipoServicio.js";
import profesional from "./routers/profesional.js";
import comprobante from "./routers/comprobante.js";
const app = express();
app.use(express.json());
app.use(cors());

app.use(cliente);
app.use(servicio);
app.use(tipoServicio);
app.use(profesional);
app.use(comprobante);

app.get("/", (req, res) => {
  res.json("hello word");
});

export default app;
