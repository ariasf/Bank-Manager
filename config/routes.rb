Rails.application.routes.draw do
  resources :users
	resources :bank_transactions do
		collection { post :import }
	end	
end
