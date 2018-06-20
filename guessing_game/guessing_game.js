console.log('welcome to the guessing game')


// prompt user for a max value
var maxValuePrompt = prompt('choose a maximum number')
// transform the value into a number
var maxValue = Number(maxValuePrompt)
// randomize a number
var correctNumberRandom = Math.floor(((Math.random() * maxValue) + 1))
// store the random number in new variable so it does not repeat
var correctNumber = correctNumberRandom
// prompt the user
var userGuess = prompt('You guess')

// create a while loop

while (userGuess != correctNumber){ 
    // if guess is higher alert user to guess lower
    if (userGuess > correctNumber) {
        alert('guess lower')
        userGuess = prompt('Guess again!')
        //if guess is lower alert user to guess if higher
    } else if (userGuess < correctNumber){
        alert('guess higher')
        userGuess = prompt('Guess again!')
    }
}
// if user exits the loop send reward message
alert('you are correct!')