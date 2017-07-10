class BankAccount
  attr_reader :balance, :deposit, :statement

  def initialize(balance = 0, deposit = Deposit.new, statement = BankAccountStatement.new)
    @balance = balance
    @deposit = deposit
    @statement = statement
  end

  def make_deposit(client_credit)
    deposit.add_credit(client_credit)
    deposit.add_date
    @balance = deposit.credit + @balance
  end
end
