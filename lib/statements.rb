class Statements
  def initialize
    @statements = []
  end

  def record(amount, transaction_class)
    @statements << BankAccountStatement.build(amount, transaction_class)
  end
end
