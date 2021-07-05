require 'statement'
require 'account'

describe Statement do

  before :each do
    @statement = Statement.new
  end

  it 'can create a new statement' do
    @statement = Statement.new
    expect(@statement).to be_instance_of(Statement)
  end

  it 'can has a transactions variable' do
    @account = Account.new
    expect(@account.transactions.length).to eq(0)
  end

  it 'can has a transactions variable' do
    @account = Account.new
    @account.deposit('01/06/2021', 1000)
    expect(@account.transactions.length).to eq(1)
  end

end