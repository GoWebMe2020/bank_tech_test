require 'terminal-table'

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

  def print_statement
    rows = []
    table = Terminal::Table.new rows: rows
  
    @transactions.each do |transaction|
      rows << [transaction[:date], transaction[:credit], transaction[:debit], transaction[:balance]]
    end
    table = Terminal::Table.new rows: rows
    table = Terminal::Table.new headings: %w[date credit debit balance], rows: rows
    puts table
  end

end

