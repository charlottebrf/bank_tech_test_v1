require 'bank_account_statement'

describe BankAccountStatement do
  subject(:bank_account_statement) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a deposit statement collector' do
      expect(bank_account_statement.deposit_statement_collector).to equal bank_account_statement.deposit_statement_collector
      # expect(bank_account_statement.deposit_statement_collector).to equal { date: '', credit: 0, balance: 0 }
    end

    it 'is initialized with a withdrawal statement collector' do
      expect(bank_account_statement.withdrawal_statement_collector).to equal bank_account_statement.withdrawal_statement_collector
      # expect(bank_account_statement.withdrawal_statement_collector).equal? { date: '', debit: 0, balance: 0}
    end
  end

  describe '#print_deposit_statement' do
    it 'prints a single deposit statement' do
      bank_account_statement.withdrawal_statement_collector = { date: '11/07/2017', credit: 20.00, balance: 25.00}
      expect { bank_account_statement.print_deposit_statement }.to output(/date || credit || debit || balance
      \11\/07\/2017 || 20.00 || || 25.00\n/).to_stdout
    end
  end

  describe '#print_withdrawal_statement' do
    it 'prints a single deposit statement' do
      bank_account_statement.withdrawal_statement_collector = { date: '11/07/2017', debit: 10.00, balance: -10.00}
      expect{ bank_account_statement.print_withdrawal_statement }.to output(/date || credit || debit || balance
      \11\/07\/2017 || || 10.00 || -10.00\n/).to_stdout
    end
  end

end
