require 'bank_account'

describe BankAccount do
  subject(:bank_account) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a balance that has a default value of zero' do
      expect(bank_account.balance).to equal 0
    end

    it 'is initialized with an injected instance of the Deposit class' do
      expect(bank_account.deposit).to equal bank_account.deposit
    end
  end
end
