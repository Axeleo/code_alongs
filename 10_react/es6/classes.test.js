const BankAccount = require("./classes")

test('bank account defaults to zero', () => {
  let account = new BankAccount()
  expect( account.getBalance() ).toEqual(0)
})


test("bank account with starting balance", () => {
  let account = new BankAccount(1000)
  expect( account.getBalance() ).toEqual(1000)
})