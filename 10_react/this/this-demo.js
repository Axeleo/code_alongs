console.log("this")

var account =  {
    balance: 0,
    deposit: function() {
      // this.balance  = this.balance + amount
      console.log(this)
    }
}

//  Context

function anyFunc(params) {
  //  access to  context with 'this' keyword
  // context is just an object
}

// how to tell what is the contxt, how the function is being called

// Context RULES


// 1 default binding
function car() {
  console.log(this)
}
car()
// context is - global object - browser - window

// 2 implicit binding
account.depoist() // how to funciton is being called
// context - this - account


// 3 explicit binding

var linAccount = {
  balance: 10000000
}
var axelAccount = {
  balance: -10000000
}

account.deposit.call(linAccount) // with returns lin balance
account.deposit.apply(linAccount) // with returns axel balance
// the context has changed by using the call function


// 4  HARD binding

var newDeposit = account.deposit.bind(linAccount)




