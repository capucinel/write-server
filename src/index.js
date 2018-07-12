const express = require("express")
const morgan = require("morgan")
const app = express()
const connection = require('./helper/db.js')
const mysql = require('mysql2')

app.use(morgan('dev'))

app.get("/", (req, res) => {
    res.send("OK")
})

app.get('/writings', (req, res) => {
    connection.getWritings()
    .then(writings => res.json(writings))
})

let server = app.listen(process.env.PORT || 3030, () => {
    console.log("listening on port ", server.address().port)
})