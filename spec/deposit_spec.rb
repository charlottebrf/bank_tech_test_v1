require 'deposit'

describe Deposit do
  subject(:deposit) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a date' do
      expect(deposit.date).equal? ''
    end

    it 'is initialized with a credit default value of 0' do
      expect(deposit.credit).equal? 0
    end
  end

  describe '#add_credit' do
    it 'stores the credit quanity of the client' do
      expect(deposit.add_credit(10)).to equal 10
    end
  end

  describe '#add_date' do
    it 'stores the date of when a deposit was made' do
      expect(deposit.add_date).equal? Time.now.strftime('%d/%m/%Y')
    end
  end
end
