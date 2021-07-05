require 'terminal-table'
require 'account'

class Statement

  attr_accessor :transactions
  
  def initialize
    @transactions = []
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

  def save_deposit(deposit_amount, balance)
    @transactions << { date: time_of_transaction, credit: deposit_amount, debit: 0, balance: balance }
  end

  def save_withdrawel(withdrawel_amount, balance)
    @transactions << { date: time_of_transaction, credit: 0, debit: withdrawel_amount, balance: balance }
  end

  def time_of_transaction
    Time.now.strftime("%d, %m, %Y")
  end

end