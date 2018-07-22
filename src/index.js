const http = require("http")
const express = require("express")
const morgan = require("morgan")
const app = express()
const connection = require('./helper/db.js')
const bodyParser = require('body-parser')

app.use(morgan('dev'))
  
app.use((req, res, next) => {
    // res.header('Access-Control-Allow-Origin', '*')
    // res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept')
      // autorisation
    res.header('Access-Control-Allow-Origin', req.headers.origin)
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept')
    next()
  })

  app.use(bodyParser.urlencoded({ extended: false }))
  app.use(bodyParser.json())
  extended: true
  
app.get("/", (req, res) => {
    res.send("OK")
})

app.get('/writings', (req, res, error) => {
    console.log(req);
    connection.query('select * from writings', (error, results, fields) => {
        if (error) throw error;
        res.end(JSON.stringify(results));
    })
})

app.post('/writings/delete/id=:id', function (req, res) {
    connection.query('DELETE FROM writings WHERE id_writings = ?', [req.body.id], (error, results, fields) => {
        if (error) throw error
        res.end('Record has been deleted!')
    })
})

let server = app.listen(process.env.PORT || 3333, () => {
    console.log("listening on port ", server.address().port)
})