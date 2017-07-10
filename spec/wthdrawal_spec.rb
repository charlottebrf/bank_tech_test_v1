require 'withdrawal'

describe Withdrawal do
  subject(:withdrawal) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a date' do
      expect(withdrawal.date).equal? ''
    end

    it 'is initialized with a debit default value of 0' do
      expect(withdrawal.debit).equal? 0
    end
  end
end
