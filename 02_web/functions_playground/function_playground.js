console.log('peeling bananas')

var peelBanans = function (listOfBanana) {
  var peeledBananas = []
  for (var i = 0; i < listOfBanana.length; i++){
    console.log('peeling banana at index ' + listOfBanana[i])
    peeledBananas.push(listofBanana[i])
  }
  return peeledBananas
}

function map(array, callback) {
  const output = []
  for (let i = 0; i < array.length; i++){
    output.push(callback(array[i]))
  }
  return output
}

function shout(word) {
  return word.toUppercase()
}
