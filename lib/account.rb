class Account

  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(date, deposit_amount)
    @deposit_amount = deposit_amount
    @date = date
    @balance = @deposit_amount
  end

end