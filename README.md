#Readme

#### Bank Manager
Import a CSV file containing bank transaction data with the following header:

	id	date	description	 categories	 	amount	 account_id		user_id 	user_name

mandatory fields are 
* user_id (the bank_user_id)
* id (the transaction_id from the bank)
* date
* amount

optional fields are
* user_name (random name assigned if blank)
* description
* categories ( this must be a column seperated string )
* account_id