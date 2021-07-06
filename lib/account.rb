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
    fail "Insufficient funds" if over_draft?(amount)
    p over_draft?(amount)
    @balance -= amount
    @statement.save_withdrawel(amount, @balance)
  end

  private

  def over_draft?(money)
    @balance - money < 0
  end

end

