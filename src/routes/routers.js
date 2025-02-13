const { Router } = require("express");
const authUsuarios = require("./auth.usuario");
const authProductos = require("./auth.producto");

const router = Router();

router.use("/usuario", authUsuarios);
router.use("/producto", authProductos);

module.exports = router;