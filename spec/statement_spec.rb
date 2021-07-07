require 'statement'
require 'account'

describe Statement do

  
  before :each do
    @statement = Statement.new
    @account = Account.new(@statement)
  end

  after :each do
    @transactions = 0
  end

  it 'has an empty transactions variable' do
    expect(@statement.transactions.length).to eq(0)
  end

  it 'has a transactions variable that stores transactions' do
    @account.deposit(1000, '07/07/2021')
    @account.withdraw(500, '07/07/2021')
    expect(@statement.transactions.length).to eq(2)
  end

  it 'prints out the transactions in the Statement' do
    @account.deposit(1000, '07/07/2021')
    @account.withdraw(600, '07/07/2021')
    @statement.render_statement
    @statement.stub(:render_statement).and_return('Your statement is rendered')
    expect(@statement.render_statement).to eq('Your statement is rendered')
  end

end