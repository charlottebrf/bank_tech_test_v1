class BankAccountStatement
  attr_reader :statement_collector

  def initialize
    @statement_collector = []
  end
end
