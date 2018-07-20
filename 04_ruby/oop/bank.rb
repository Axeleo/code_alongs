
# API

require 'pry'
class Account

  def initialize # instance method
    @balance = 0
  end

  def deposit(amount) # instance method
    @balance += amount
    self
  end

  def balance # instance method
    @balance
  end

  def withdraw(amount)
    withdraw_fee = 1
    @balance -= amount + withdraw_fee
    @balance
  end

  #setter
  def name=(name)
    @account_name = name
  end

  #getter
  def name
    @account_name
  end
end
 
a1 = Account.new

a1.deposit(15)

a1.deposit(12)

a1.balance

a2 = Account.new

a2.balance

binding.pry