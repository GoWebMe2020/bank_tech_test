require './lib/statement'

class Account

  attr_accessor :balance, :transactions

  STARTING_BALANCE = 0

  def initialize
    @balance = STARTING_BALANCE
    @transactions = []
  end

  def deposit(date, deposit_amount)
    @date = date
    @deposit_amount = deposit_amount
    @withdrawel_amount = 0
    @balance += @deposit_amount
    save_transactions
  end

  def withdraw(date, withdrawel_amount)
    @date = date
    @deposit_amount = 0
    @withdrawel_amount = withdrawel_amount
    @balance -= @withdrawel_amount
    save_transactions
  end

  def save_transactions
    transactions << { date: @date, credit: @deposit_amount, debit: @withdrawel_amount, balance: @balance }
  end

end