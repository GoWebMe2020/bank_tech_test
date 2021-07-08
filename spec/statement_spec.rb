require 'statement'

describe Statement do

  before :each do
    @statement = Statement.new
  end

  it 'prints out the transactions in the Statement' do
    expect(@statement.render_statement).to eq(nil)
  end

end