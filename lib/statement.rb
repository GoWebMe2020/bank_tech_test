require 'terminal-table'

class Statement

  attr_accessor :transactions
  
  def initialize
    @transactions = []
  end

  def render_statement
    rows = []
    table = Terminal::Table.new rows: rows

    @transactions.reverse.each do |transaction|
      rows << [transaction[:date], transaction[:credit], transaction[:debit], transaction[:balance]]
    end
    table = Terminal::Table.new headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

end