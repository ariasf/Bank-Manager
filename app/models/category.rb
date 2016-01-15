class Category < ActiveRecord::Base
  belongs_to :bank_transactions
end
