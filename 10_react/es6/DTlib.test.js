

const {truncate, getFavColor} = require("./DTlib")

test("truncate", () =>{
  const quote = "Do it better, do it right"
  expect( truncate(quote, 5) )
    .toEqual("Do it")
})
test("truncate 2", () =>{
  const quote = "Knowledge is limied"
  expect( truncate(quote, 4) )
    .toEqual("Know")
})

test("getFavColor", () =>{

  expect( getFavColor() )
    .toEqual(["mistyrose", "pink"])
})








