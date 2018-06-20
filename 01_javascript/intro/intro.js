var userName = prompt('who are you?');
var userAge = prompt('how old are you?');

if (userAge > 50) {
    var introduction = document.createElement('p')
    introduction.textContent = ('welcome ' + userName + ' you are old!')
}   else {
    var introduction = document.createElement("p");
    document.getElementsByTagName("p").textContent = "hello";
    console.log('young')
};