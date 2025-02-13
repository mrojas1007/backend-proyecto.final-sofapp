const { DB } = require("../config/db");
const format = require("pg-format");
const { errorMiddleware } = require("../middlewares/errorsManager");
const bcrypt = require("bcrypt");

const verificarCredenciales = async (email, pass) => { 
  try {
    const SQLQuery = format(
      `
                SELECT * FROM usuario
                WHERE email = %L AND pass = %L
            `,
      email,
      pass 
    );

    const {
      rows: [user],
      rowCount,
    } = await DB.query(SQLQuery);

    if (!rowCount) {
      throw new Error("NOT_FOUND");
    } else {
      return user;
    }
  } catch (error) {
    throw error;
  }
};

const login = async (email, pass) => { 
  try {   
    const { rows } = await DB.query(
      "SELECT * FROM usuario WHERE email = $1 AND pass = $2",
      [email, pass] 
    );

    if (rows.length === 0) {
      throw new Error("AUTH_ERROR");
    }

    return rows[0]; 
  } catch (error) {
    console.error("Error en el login:", error.message);
    throw new Error("AUTH_ERROR");
  }
};

const existe = async (email) => {
  try {
    const SQLQuery = format(
      `
                SELECT * FROM usuario
                WHERE email = %L
            `,
      email
    );

    const {
      rows: [user],
      rowCount,
    } = await DB.query(SQLQuery);

    if (!rowCount) {
      throw new Error("NOT_FOUND");
    } else {
      return user;
    }
  } catch (error) {
    throw error;
  }
};

const register = async (nombre, apellido, email, pass, fono) => {
  try {
    const SQLQuery = format(
      `
                INSERT INTO usuario (nombre, apellido, email, "pass", fono )
                VALUES (%L, %L, %L, %L, %L)
                RETURNING *
            `,
      nombre,
      apellido,
      email,
      pass,
      fono
    );

    const {
      rows: [user],
      rowCount,
    } = await DB.query(SQLQuery);

    if (!rowCount) {
      throw new Error("BAD_REQUEST");
    } else {
      return user;
    }
  } catch (error) {
    throw error;
  }
};

module.exports = {
  login,
  verificarCredenciales,
  existe,
  register,
};
