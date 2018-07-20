// (1.) Write the correct javascript to select the second h1 element:

// (2.) How would you change the contents of the h1 element to be 'Friend' ?

//   (3.) How would you add an event listener to the button element inside the div with class box, so that when it is clicked the background colour of the div with class box changes to red ?

//     (4.) Store the contents of the input box element with id 'fav-color' into a variable called 'favColor'.

// (5.) Write the necessary code to figure out the number children elements in the shopping - list ul.

// (6.) Write the neccessary code so when the button is clicked a new list item with a random number between 1 and 45 is appended to the unordered list with the class 'lucky-numbers'

// 1
var secondh1 = document.querySelector('ul h1')

// 2 
 document.querySelector('div h1').textContent = 'Friend'

 // 3 
 var boxBtn = document.querySelector('.box button')
 boxBtn.addEventListener('click', function () {
   boxBtn.style.backgroundColor = 'red'
 })

 //4
var favColorInput = document.querySelector('#fav-color')
var favColor = favColorInput.value

// 5
document.querySelector('.shopping-list').children.length

// 6
var drawBtn = document.querySelector('.draw-btn')
var luckyNumberList = document.querySelector('.lucky-numbers')
function randomInt(min, max) {
  min = Math.ceil(min)
  max = Math.floor(max)
  return Math.floor(Math.random() * (max - min)) + min
}
drawBtn.addEventListener('click', function () {
  let newListItem = document.createElement('li')
  newListItem.textContent = randomInt(1, 45)
  luckyNumberList.appendChild(newListItem)
})