class BankTransaction < ActiveRecord::Base
	require 'csv'
	validates :user_id, presence: true
	belongs_to :user
	has_many :bank_transaction_categories, :class_name => 'BankTransactionCategories'
  has_many :categories, through: :bank_transaction_categories

	def self.import(file)
		csv_text = File.read(file.path)		
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
			user_attrs = {:bank_user_id => row["user_id"]}
			user_attrs["name"] = row["user_name"] if row["user_name"]
			user = User.find_or_create_by user_attrs

			attrs = row.to_hash.slice("date", "description", "amount", "account_id")
			attrs["user_id"] = user.id
			attrs["transaction_id"] = row["id"]
			t = BankTransaction.find_or_create_by attrs			
			t.user_id = user.id
			t.save

			categories = []
			categories = row["categories"].split(",") if row["categories"]
			categories.each do |c|
				cat = Category.find_or_create_by(:name => c.titleize)
				BankTransactionCategories.find_or_create_by(:category_id => cat.id, :bank_transaction_id => t.id, :user_id => user.id)
			end

		end
	end    
  def friendly_date
  	date.strftime("%m/%d/%y %H:%M") if date
  end
end