class BankAccountStatement
  attr_reader :deposit_statement_collector, :withdrawal_statement_collector

  def initialize
    @deposit_statement_collector = { date: '', credit: 0, balance: 0 }
    @withdrawal_statement_collector = { date: '', debit: 0, balance: 0}
  end
