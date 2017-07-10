class Withdrawal
  attr_reader :date, :debit

  def initialize
    @date = ''
    @debit = 0
  end

  def add_debit(client_debit)
    @debit = client_debit
  end

end
