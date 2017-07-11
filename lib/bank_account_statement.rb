class BankAccountStatement
  attr_accessor :deposit_statement_collector, :withdrawal_statement_collector

  def initialize
    @deposit_statement_collector = { date: '', credit: 0, balance: 0 }
    @withdrawal_statement_collector = { date: '', debit: 0, balance: 0}
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
