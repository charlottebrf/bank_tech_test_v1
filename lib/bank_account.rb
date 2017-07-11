class BankAccount
  attr_reader :balance, :withdrawal, :deposit, :statement, :collect_statements

  def initialize(balance = 0, deposit = Deposit.new, withdrawal = Withdrawal.new, statement = BankAccountStatement.new)
    @balance = balance
    @withdrawal = withdrawal
    @deposit = deposit
    @statement = statement
    @collect_statements = []
  end

  def make_deposit(client_credit, deposit_class = Deposit)
    @balance += client_credit
    deposit = deposit_class.new(client_credit, @balance) # => { time: Time.now, amount: client_credit, balance: @balance }

    @collect_statements << @statement.record(deposit)
  end

  def make_withdrawal(client_debit, withdrawal_class = Withdrawal)
    @balance -= client_debit
    withdrawal = withdrawal_class.new(client_debit, @balance)

    @collect_statements << @statement.record(withdrawal)
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
