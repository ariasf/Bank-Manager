class CreateModels < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :bank_user_id
      t.string :name
      t.timestamps null: false
    end

		create_table :bank_transactions do |t|
      t.datetime :date
      t.string :description, default: ""
      t.float :amount, default: 0
      t.string :account_id
      t.string :transaction_id
      t.references :user, index: true
      t.timestamps null: false
    end
		# add_foreign_key :transactions, :users
    create_table :categories do |t|      
      t.string :name
      t.timestamps null: false
    end
    create_table :bank_transaction_categories do |t|
      t.references :bank_transaction, index: true
      t.references :category, index: true
      t.references :user, index: true
      t.timestamps null: false
    end
    # add_foreign_key :categories, :transactions
  end
end