#!/usr/bin/env node

console.log('ex1')

let total = 0

for (let index = 2; index < process.argv.length; index++) {
   total += Number(process.argv[index])
}



console.log(total)


// to run directly off console
// in console chmod +x ex1.js