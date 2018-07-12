const mysql = require('mysql2/promise')

const connection  = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "capucine",
    database: "writedb"
})

const exec = async (query, params) => {
    const c = await connection
    const result = await c.execute(query, params)
    return result[0]
  }

const getWritings = () =>  exec("SELECT * FROM writings")

  
module.exports = { getWritings }


