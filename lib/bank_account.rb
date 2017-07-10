class BankAccount
  attr_reader :balance, :deposit

  def initialize(balance = 0, deposit = Deposit.new)
    @balance = balance
    @deposit = deposit
  end

  def make_deposit(client_credit)
    deposit.add_credit(client_credit)
    deposit.add_date
    @balance = deposit.credit + @balance
  end
end
