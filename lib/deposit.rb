class Deposit
  attr_reader :date, :credit

  def initialize
    @date = []
    @credit = 0
  end

  def add_credit(client_credit)
    @credit = client_credit
  end

  def add_date
    @date.push(Time.now.strftime('%d/%m/%Y'))
  end
end
