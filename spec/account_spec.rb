require 'account'

describe Account do

  before :each do
    @statement = double(:statement, transactions: [], render_statement: 'Your statement is printed')
    @account = Account.new(@statement)
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
      @account.deposit(1000, '07/07/2021')
      expect(@account.balance).to eq(1000)
    end
  end
  
  describe '#withdrawel' do
    it 'decreases the balance when a withdrawel is made' do
      @account.deposit(1000, '07/07/2021')
      @account.withdraw(500, '07/07/2021')
      expect(@account.balance).to eq(500)
    end

    it 'will not let the user draw the account to below 0' do
      @account.deposit(1000, '07/07/2021')
      @account.withdraw(500, '07/07/2021')
      expect { @account.withdraw(501, '07/07/2021') }.to raise_error("Insufficient funds")
    end
  end

  describe '#print_statement' do
    it 'calls render_statement from the Statement class' do
      expect(@statement).to receive(:render_statement)
      expect(@account.print_statement).to eq('Your statement is printed')
    end
  end

end