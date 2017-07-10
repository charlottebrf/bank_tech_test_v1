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

  describe '#make_deposit' do
    it 'adds the credit to the account balance' do
      bank_account.make_deposit(10)
      expect(bank_account.balance).to equal 10
    end

    xit 'stores all the information about a deposit' do
      bank_account.make_deposit(10)
      expect(bank_account.balance).to equal 10
    end
  end
end
