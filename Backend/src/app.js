const express = require("express");
const cors =require("cors");

const vitalsRoutes = require("./routes/vitals.routes");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api/vitals",vitalsRoutes);

module.exports = app;