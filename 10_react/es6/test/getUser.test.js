

const assert = require('assert')
const getUser = require("./getUser")

it("works", () =>{
   assert( getUser(), "dt")
})

module.exports = getUser
