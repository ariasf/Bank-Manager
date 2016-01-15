class User < ActiveRecord::Base
	include NameGenerator
	validates :bank_user_id, presence: true, uniqueness: true	
	before_create :generate_name
	has_many :bank_transactions
	has_many :bank_transaction_categories, :class_name => 'BankTransactionCategories'
  has_many :categories, through: :bank_transaction_categories

	def generate_name
		self.name = random_full_name unless self.name
	end
	def filtered_transactions q		
		c = Category.find_by_name q
		if c
			bank_transactions.joins(:bank_transaction_categories).where(bank_transaction_categories: { :category_id => c.id })
		else 
			bank_transactions
		end		
	end	

	def transactions_count
		bank_transactions.size
	end

	def sorted_grouped_expenses
		grouped_expenses.rows.sort {|a,b| b[1].to_f <=> a[1].to_f}
	end

	def sorted_grouped_income
		grouped_income.rows.sort {|a,b| b[1].to_f <=> a[1].to_f}
	end

	def grouped_expenses
		sql = "SELECT C.name, ABS(sum(BT.amount)) from bank_transaction_categories BTC, 
							Users U, 
							Categories C,
							Bank_Transactions BT
							Where C.id = BTC.category_id and U.id = BTC.user_id and U.id = #{id} and BT.id = BTC.bank_transaction_id
							and BT.amount > 0
							Group By C.name;"
		result = ActiveRecord::Base.connection.exec_query(sql)
	end
	def grouped_income
		sql = "SELECT C.name, ABS(sum(BT.amount)) from bank_transaction_categories BTC, 
							Users U, 
							Categories C,
							Bank_Transactions BT
							Where C.id = BTC.category_id and U.id = BTC.user_id and U.id = #{id} and BT.id = BTC.bank_transaction_id
							and BT.amount < 0
							Group By C.name;"
		result = ActiveRecord::Base.connection.exec_query(sql)
	end
end