require 'deposit'

describe Deposit do
  subject(:deposit) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a date' do
      expect(deposit.date).equal? []
    end

    it 'is initialized with a credit default value of 0' do
      expect(deposit.credit).equal? 0
    end
  end

end
