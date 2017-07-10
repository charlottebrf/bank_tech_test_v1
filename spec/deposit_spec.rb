require 'deposit'

describe Deposit do
  subject(:deposit) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a deposit_date' do
      expect(deposit.date).equal? []
    end
  end

end
