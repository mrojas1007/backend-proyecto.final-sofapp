const { signToken } = require("../helpers/jwt");
const Auth = require("../modelo/usuario.model");

const handleLogin = async (req, res, next) => {
    try {
      const { email, pass } = req.body; 
      const user = await Auth.login(email, pass); 

      if (!user) {
        return res.status(401).json({ msg: "Credenciales incorrectas" });
      }

      const data = {
        id_usuario: user.id_usuario,
        nombre: user.nombre,
        apellido: user.apellido,
        email: user.email,
        pass: user.pass, 
        fono: user.fono
      };

      const token = signToken(data);
      res.status(200).json({ 
        token, 
        id_usuario: user.id_usuario, 
        nombre: user.nombre, 
        apellido: user.apellido, 
        email: user.email, 
        pass: user.pass,
        fono: user.fono
      });
    } catch (error) {
      console.error("Error en el login:", error.message); 
      next(error);
    }
};

const handleRegister = async (req, res, next) => {
  try {
    const { nombre, apellido, email, pass, fono } = req.body;

    const user = await Auth.register(nombre, apellido, email, pass, fono);

    res.status(200).json({ msg: "User registered successfully", user });
  } catch (error) {
    next(error);
  }
};

module.exports = {
  handleLogin,
  handleRegister,
};
