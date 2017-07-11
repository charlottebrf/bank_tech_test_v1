class BankAccountStatement
  def initialize
    @transaction = nil
  end

  def record(withdrawal_or_deposit)
    @transaction = withdrawal_or_deposit
    self
  end

  def self.build(amount, transaction_class)
    transaction = transaction_class.new(amount)
    new.record(transaction)
  end

  def print_deposit_statement
    puts "#{deposit_statement_collector[:date]} || #{deposit_statement_collector[:credit]} || || #{deposit_statement_collector[:balance]}"
  end

  def print_withdrawal_statement
    puts "#{withdrawal_statement_collector[:date]} || || #{withdrawal_statement_collector[:debit]} || #{deposit_statement_collector[:balance]}"
  end

  def print_statement_header
    puts "date || credit || debit || balance"
  end
end
