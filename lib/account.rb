require 'terminal-table'

class Account

  attr_accessor :balance, :transactions

  STARTING_BALANCE = 0

  def initialize
    @balance = STARTING_BALANCE
    @transactions = []
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    save_deposit(deposit_amount)
  end

  def withdraw(withdrawel_amount)
    @balance -= withdrawel_amount
    save_withdrawel(withdrawel_amount)
  end

  def print_statement
    rows = []
    table = Terminal::Table.new rows: rows
  
    @transactions.each do |transaction|
      rows << [transaction[:date], transaction[:credit], transaction[:debit], transaction[:balance]]
    end
    table = Terminal::Table.new headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

  private

  def save_deposit(deposit_amount)
    transactions << { date: time_of_transaction, credit: deposit_amount, debit: 0, balance: @balance }
  end

  def save_withdrawel(withdrawel_amount)
    transactions << { date: time_of_transaction, credit: 0, debit: withdrawel_amount, balance: @balance }
  end

  def time_of_transaction
    Time.now.strftime("%d, %m, %Y")
  end

end

