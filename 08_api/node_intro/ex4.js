// built in standard libraries
const fs = require('fs') //file system module

let file = fs.readFileSync(process.argv[2])
// fs.readFileSync('eQuery.js')

let fileLines = file.toString().split('\n')

//separate into its own function
let isNotBlank = line => line.trim() !== ''

// now pass it in as the test for the filter
let loc = fileLines.filter(isNotBlank)
// let loc = fileLines.filter(line => line.trim() != '')


console.log(`loc: ${loc.length}`)



C