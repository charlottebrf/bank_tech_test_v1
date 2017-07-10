class BankAccount
  attr_reader :balance, :deposit, :statement, :collect_statements

  def initialize(balance = 0, deposit = Deposit.new, statement = BankAccountStatement.new)
    @balance = balance
    @deposit = deposit
    @statement = statement
    @collect_statements = []
  end

  def make_deposit(client_credit)
    @statement.deposit_statement_collector[:credit] = deposit.add_credit(client_credit)
    @statement.deposit_statement_collector[:date] = deposit.add_date
    @balance = deposit.credit + @balance
    @statement.deposit_statement_collector[:balance] = @balance
    @collect_statements << @statement
  end
end
