class BankAccount
  attr_reader :balance, :withdrawal, :deposit, :statement, :collect_statements

  def initialize(balance = 0, deposit = Deposit.new, withdrawal = Withdrawal.new, statement = BankAccountStatement.new)
    @balance = balance
    @withdrawal = withdrawal
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

  def make_withdrawal(client_debit)
    @statement.withdrawal_statement_collector[:debit] = withdrawal.add_debit(client_debit)
    @statement.withdrawal_statement_collector[:date] = withdrawal.add_date
    @balance = @balance - withdrawal.debit
    @statement.withdrawal_statement_collector[:balance] = @balance
    @collect_statements << @statement
  end

  def print_bank_statement
    @statement.print_statement_header
    @collect_statements.each do |statement|
      if statement.deposit_statement_collector[:credit] != nil
        statement.print_deposit_statement
      elsif statement.withdrawal_statement_collector[:debit] != nil
        statement.print_withdrawal_statement
      end
    end
  end
end
