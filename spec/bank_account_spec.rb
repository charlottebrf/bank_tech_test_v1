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

    it 'is initialized with an injected instance of the BankAccountStatement class' do
      expect(bank_account.statement).to equal bank_account.statement
    end
  end

  describe '#make_deposit' do
    it 'adds the credit to the account balance' do
      bank_account.make_deposit(10)
      expect(bank_account.balance).to equal 10
    end

    it 'stores all the information about a deposit inside statement' do
      bank_account.make_deposit(10)
      expect(bank_account.statement).equal? {date: '10/07/17', credit: 10, balance: 10}
    end
  end
end
