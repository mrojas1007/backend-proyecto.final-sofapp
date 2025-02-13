const express = require("express");
const routes = require("./routes/routers");
const morgan = require("morgan");
const cors = require("cors");
const { errorMiddleware } = require("./middlewares/errorsManager");

const app = express();
app.use(express.json());
app.use(morgan("dev"));
app.use(cors());

app.use(routes);
app.use(errorMiddleware);
app.use((req, res, next) => {
    res.status(404).json({ msg: "Ruta no encontrada" });
});

module.exports = app;
