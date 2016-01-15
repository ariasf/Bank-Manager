class BankTransactionsController < ApplicationController
  def index
    @bank_transactions = BankTransaction.page params[:page]
  end
  
  def import
    BankTransaction.import(params[:file])
    redirect_to bank_transactions_path
  end
end