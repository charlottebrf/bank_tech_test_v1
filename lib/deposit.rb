class Deposit
  attr_reader :date, :credit

  def initialize
    @date = []
    @credit = 0
  end

  def add_credit(client_credit)
    @credit = client_credit
  end

end
