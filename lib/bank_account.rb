class BankAccount
  attr_reader :balance, :deposit

  def initialize(balance = 0, deposit = Deposit.new)
    @balance = balance
    @deposit = deposit
  end
end
