require("dotenv").config();
const { Pool } = require("pg");

const { DB_HOST, DB_USER, DB_PASS, DB_NAME } = process.env;

const DB = new Pool({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASS,
  database: DB_NAME,
  allowExitOnIdle: true,
  ssl: process.env.DB_SSL === 'true' ? { rejectUnauthorized: false } : false,

});

module.exports = { DB };

