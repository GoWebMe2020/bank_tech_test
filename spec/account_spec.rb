require 'account'

describe Account do

  before :each do
    @account = Account.new
  end
  
  it 'can create a new account' do
    expect(@account).to be_instance_of(Account)
  end

  it 'increases the balance available when a deposit is made' do
    @account.deposit('01/06/2021', 1000)
    expect(@account.balance).to eq(1000)
  end

  it 'ensures that every new account starts with a 0 balance' do
    expect(@account.balance).to eq(0)
  end

  it 'ensures that every account has a STARTING_BALANCE of 0' do
    expect(@account.balance).to eq(Account::STARTING_BALANCE)
  end

  it 'decreases the balance when a withdrawel is made' do
    @account.deposit('01/06/2021', 1000)
    @account.withdraw('02/06/2021', 500)
    expect(@account.balance).to eq(500)
  end

end