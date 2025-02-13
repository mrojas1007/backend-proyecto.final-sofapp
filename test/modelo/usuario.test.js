const {
  login,
  verificarCredenciales,
  existe,
  register,
} = require("../modelo/usuario.model");
const { DB } = require("../../src/config/db");

describe('usuario modelo', ()=>{

    describe('verificarCredenciales', ()=>{

        test('Usuario y contraseña correctos', async()=>{
            const email = 'test@prueba.com';
            const pass = 'password';
            DB.query

        })
    })
})
