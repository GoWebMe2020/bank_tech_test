require 'statement'

class Account

  attr_accessor :balance

  STARTING_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = STARTING_BALANCE
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.save_deposit(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @statement.save_withdrawel(amount, @balance)
  end

end

