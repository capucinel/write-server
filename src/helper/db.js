const mysql = require('mysql')

const connection  = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "capucine",
    database: "writedb"
})

connection.connect((err) => {
    if (err) throw err;
    console.log("Connected!");
  });

  //rest api to get all results


// const exec = async (query, params) => {
//     const c = await connection
//     const result = await c.execute(query, params)
//     return result[0]
//   }


// // const getWritings = () =>  exec("SELECT * FROM writings")

// const deleteWriting = id => exec("DELETE FROM writings WHERE id_writings = ?", [id])

module.exports = connection


