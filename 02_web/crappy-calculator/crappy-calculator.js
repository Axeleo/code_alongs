
function calculate() {
  var num1str = document.querySelector('.num1-input').value
  var num2str = document.querySelector('.num2-input').value
  var num1 = Number(num1str)
  var num2 = Number(num2str)
  var sum = num1 + num2
  document.body.children[4].textContent = (sum)
}
document.querySelector('.calculate-btn').addEventListener('click', calculate)
