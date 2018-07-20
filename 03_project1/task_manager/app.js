console.log('task manager')

//declare variables
var todoItems = document.querySelectorAll('li')
var resetBtn = document.querySelector('.reset-btn')
var newTodoInput = document.querySelector('.new-todo-input')
var formTodoBtn = document.querySelector('form button')
var todoList = document.querySelector('.todo-list')
// create class to toggle class of items and count number of toggled lists
function markComplete(event) {
  if (event.target.classList.contains('todo-item') === false) {
    return
  }
  var todoItems = document.querySelectorAll('li')
  event.target.classList.toggle('completed')
  completedCount = document.querySelectorAll('.completed').length
  document.querySelector('.items-completed').textContent = completedCount 
  allDoneChecker()
}
// all done function

function allDoneChecker() {
  if (Number(document.querySelector('.items-completed').textContent) === todoItems.length) {
    document.querySelector('.all-done').classList.remove('hidden')
  } else {
    document.querySelector('.all-done').classList.add('hidden')
  }
}

todoList.addEventListener('click', markComplete)

resetBtn.addEventListener('click', function () {
  todoItems.forEach(function (listItem) {
    listItem.classList.remove('completed')
  })
  document.querySelector('.all-done').classList.add('hidden')
  completedCount = document.querySelectorAll('.completed').length
  document.querySelector('.items-completed').textContent = completedCount
  allDoneChecker()
})

// adding input listener and function
formTodoBtn.addEventListener('click', function (event) {
  event.preventDefault()
  var newTodoValue  = newTodoInput.value
  var newLi = document.createElement('li')
  newLi.textContent = newTodoValue
  newLi.classList.add('todo-item')
  console.log(newLi)
  todoList.appendChild(newLi)
  newTodoInput.value = ''
})



