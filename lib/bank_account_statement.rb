class BankAccountStatement
  attr_reader :deposit_statement_collector

  def initialize
    @deposit_statement_collector = { date: '', credit: '', balance: '' }
  end
end
