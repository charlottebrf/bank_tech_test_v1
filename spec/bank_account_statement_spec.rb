require 'bank_account_statement'

describe BankAccountStatement do
  subject(:bank_account_statement) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a deposit statement collector' do
      expect(bank_account_statement.deposit_statement_collector).to equal bank_account_statement.deposit_statement_collector
    end
  end
end
