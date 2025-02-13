require("dotenv").config();
const jwt = require("jsonwebtoken");
const { string } = require("pg-format");

const { JWT_SECRET } = process.env;

const signToken = (data) => {
  return jwt.sign(data, String(JWT_SECRET), {
    expiresIn: "1d",
  });
};

module.exports = {
  signToken,
};
