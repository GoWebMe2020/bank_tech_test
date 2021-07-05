class Account

  attr_accessor :balance

  STARTING_BALANCE = 0

  def initialize
    @balance = STARTING_BALANCE
  end

  def deposit(date, deposit_amount)
    @deposit_amount = deposit_amount
    @date = date
    @balance += @deposit_amount
  end

  def withdraw(date, withdrawel_amount)
    @withdrawel_amount = withdrawel_amount
    @date = date
    @balance -= @withdrawel_amount
  end

end