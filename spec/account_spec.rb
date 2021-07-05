require 'account'

describe Account do

  before :each do
    @account = Account.new
  end

  after :each do
    @transactions = 0
  end

  it 'ensures that every new account starts with a 0 balance' do
    expect(@account.balance).to eq(0)
  end

  it 'ensures that every account has a STARTING_BALANCE of 0' do
    expect(@account.balance).to eq(Account::STARTING_BALANCE)
  end
  
  it 'can create a new account' do
    expect(@account).to be_instance_of(Account)
  end

  describe '#deposit' do
    it 'increases the balance available when a deposit is made' do
      @account.deposit(1000)
      expect(@account.balance).to eq(1000)
    end
  end
  
  describe '#withdrawel' do
    it 'decreases the balance when a withdrawel is made' do
      @account.deposit(1000)
      @account.withdraw(500)
      expect(@account.balance).to eq(500)
    end
  end

end