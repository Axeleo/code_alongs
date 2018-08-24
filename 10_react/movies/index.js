
const axios = require('axios')
const express = require('express')
const app = express()
app.use(express.static('public'))
const logger = require('./logger')
const controller = require('./controller')
const PORT = 7777


// templates

app.set ('view engine', 'ejs')

// request
//  []
//  []
//  []
//  \/
// This is a basic logger middlware
app.use(logger)
// continues
//  []
//  []
//  []
//  \/

app.get('/', home)
// keeps going if it doesnt hit anything eventutally it 404
//  []
//  []
//  []
//  \/

app.get('/movies', movies)

app.listen(PORT, () => {
  console.log(`listening at ${PORT}`)
})