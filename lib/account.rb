require './lib/statement'

class Account

  attr_accessor :balance

  STARTING_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = STARTING_BALANCE
    @statement = statement
  end

  def deposit(amount, date = time_of_transaction)
    @balance += amount
    @date = date
    save_deposit(amount, @balance)
  end

  def withdraw(amount, date = time_of_transaction)
    fail "Insufficient funds" if over_draft?(amount)
    @balance -= amount
    @date = date
    save_withdrawel(amount, @balance)
  end

  def save_deposit(deposit_amount, balance)
    @statement.transactions << { date: @date, credit: deposit_amount, debit: 0, balance: balance }
  end

  def save_withdrawel(withdrawel_amount, balance)
    @statement.transactions << { date: @date, credit: 0, debit: withdrawel_amount, balance: balance }
  end

  def print_statement
    @statement.render_statement
  end

  private

  def over_draft?(money)
    @balance - money < 0
  end

  def time_of_transaction
    if !@date
      Time.now.strftime("%d-%m-%Y")
    else
      @date
    end
  end

end

