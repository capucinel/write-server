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
    connection.query('SELECT * FROM writings LEFT JOIN themes ON writings.id_theme = themes.id_theme', (error, results, fields) => {
        if (error) throw error;
        res.end(JSON.stringify(results));
    })
})

app.get('/themes', (req, res, error) => {
    connection.query('SELECT * FROM themes', (error, results, fields) => {
        if (error) throw error;
        res.end(JSON.stringify(results));
    })
})

app.post('/writings/delete/id=:id', (req, res) => {
    connection.query('DELETE FROM writings WHERE id_writings = ?', [req.body.id], (error, results, fields) => {
        if (error) throw error
        res.end('Record has been deleted!') 
    })
})

app.post('/newwrite', (req, res, next) => {
    const titre = req.body.titreForm
    const texte = req.body.texteForm
    const idTheme = req.body.idThemeForm
 
    connection.query(`INSERT INTO writings 
    (title, content, id_theme) 
    VALUES (?, ?, ?)`, [titre, texte, idTheme], (error, result, fields) => {
      if (error)
        res.status(500).json({
          flash: error.message
        });
      else
        res.status(200).json({
          flash: "ok"
        });
    })
  })

let server = app.listen(process.env.PORT || 3333, () => {
    console.log("listening on port ", server.address().port)
})