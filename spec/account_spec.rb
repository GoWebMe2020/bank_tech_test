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

end