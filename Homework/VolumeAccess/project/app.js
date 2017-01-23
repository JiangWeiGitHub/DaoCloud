import express from 'express'
import fs from 'fs'

let app = express()
let port = '8080'

app.get('/', function(req, res){
  res.send(fs.readFileSync('/data/sample.json', 'utf8'))
})

app.listen(port, () => {
  console.log('Listening on port ${port}!')
})