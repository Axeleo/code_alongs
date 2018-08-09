
var http = require('http'); // standard library

var callback = function (request, response) {

  if (request.url === "/") {
    response.write("hello there")
    response.end()
  } else if (request.url === "/about") {
    response.write("about us")
    response.end()
  } else if (request.url === "/contact") {
      response.write("pls give money")
      response.end()
  } else {
      response.write("404")
      response.end()
  }
  
};

var server = http.createServer(callback);

server.listen(4567);