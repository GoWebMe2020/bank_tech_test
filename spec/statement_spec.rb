require 'statement'

describe Statement do

  it 'can create a new statement' do
    @statement = Statement.new
    expect(@statement).to be_instance_of(Statement)
  end

end