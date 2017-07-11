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
      expect(bank_account.balance).to equal 10.0
    end

    it 'stores all the information about a deposit inside statement' do
      bank_account.make_deposit(10)
      expect(bank_account.collect_statements).equal? [{date: '10/07/17', credit: 10, balance: 10}]
    end
  end

  describe '#make_withdrawal' do
    it 'deducts the debit from the account balance' do
      bank_account.make_withdrawal(10)
      expect(bank_account.balance).to equal -10.0
    end

    it 'stores all the information about a deposit inside statement' do
      bank_account.make_withdrawal(10)
      expect(bank_account.collect_statements).equal? [{date: '10/07/17', debit: 10, balance: -10}]
    end
  end

  describe '#print_bank_statement' do
    it 'prints all withdrawals and deposits for a given account' do
      bank_account.make_withdrawal(10)
      bank_account.make_deposit(20)
      bank_account.make_deposit(5)
      expect{ bank_account.print_bank_statement }.to output(/date || credit || debit || balance
      \11\/07\/2017 || || 10.00 || 10.00\n \11\/07\/2017 ||20 || || 30\n \11\/07\/2017 ||5 || || 35\n/).to_stdout
    end
  end
end
