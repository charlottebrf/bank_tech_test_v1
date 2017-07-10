require 'bank_account_statement'

describe BankAccountStatement do
  subject(:bank_account_statement) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a statement collector' do
      expect(bank_account_statement.statement_collector).equal? []
    end
  end

end 
