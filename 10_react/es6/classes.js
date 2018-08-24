

class BankAccount {

  constructor(amount = 0){
    this.balance = amount
  }

  getBalance() {
    return this.balance
  }


}

module.exports = BankAccount