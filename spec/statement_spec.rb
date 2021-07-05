require 'statement'

describe Statement do

  before :each do
    @statement = Statement.new
  end

  it 'can create a new statement' do
    @statement = Statement.new
    expect(@statement).to be_instance_of(Statement)
  end

  it 'can store transactions' do
    @account = Account.new
    expect(@statement.transactions).to eq([])
  end

end