class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show		
		@user = User.find params[:id]
		@bank_transactions = @user.filtered_transactions(params[:query]).page(params[:page])		
	end	
end