

function truncate(str, length) {
  return str.slice(0, length)
}

function getFavColor() {
  return ["mistyrose", 'pink']
}


function getUser() {
  return {
    name: "slackers",
    number: 16,

  }  
}

var user = getUser()
console.log(user.name)

// Destructuring
var [favColor, meh] = getFavColor()
console.log(favColor) // mistyrose

var { name: className} = getUser()
console.log(className)

//  1 step further
var { name } = getUser()
console.log(name)

module.exports = {
  truncate,
  getFavColor
}