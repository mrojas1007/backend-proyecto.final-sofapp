const { Router } = require("express");
const {
  HandleObtenerProductos,
  HandleCrearProducto,
  HandleObtenerProductosById,
  HandleObtenerProductosByMarca,
  HandleObtenerProductosByTipo,
  HandleObtenerProductosByCuerpo,
  verificarToken,
  HandleObtenerProductosByUsuario,
  HandleObtener5UltimosProductos,
} = require("../controller/producto.controller");

const router = Router();  

router.get("/todos", HandleObtenerProductos);
router.get("/:id([0-9]+)", HandleObtenerProductosById);
router.get("/marca/:marca", HandleObtenerProductosByMarca);
router.get("/tipo/:tipo", HandleObtenerProductosByTipo);
router.get("/cuerpo/:cuerpo", HandleObtenerProductosByCuerpo);
router.get("/cincoultimos", HandleObtener5UltimosProductos);
router.post("/agregar", verificarToken, HandleCrearProducto);
router.get("/usuario/:id_usuario", HandleObtenerProductosByUsuario);

module.exports = router;
