class BankTransactionCategories < ActiveRecord::Base
  belongs_to :bank_transaction
  belongs_to :category
end