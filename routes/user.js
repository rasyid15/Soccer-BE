const app = require("express").Router()
const control = require('../controller/user')

app.post("/login", control.login)

module.exports = app
