const errorMiddleware = (err, req, res, next) => {
    console.error("Error en el middleware:", err); // Log del error
    res.status(err.code || 500).json({
      error: "unhandledError",
      message: err.message || "Ocurrió un error inesperado",
    });
  };
  
  module.exports = { errorMiddleware };