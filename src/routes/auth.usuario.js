const { Router } = require("express");

const { handleLogin, handleRegister } = require("../controller/usuario.controller");

const router = Router();

router.post("/login", handleLogin);
router.post("/register", handleRegister);

module.exports = router;
    