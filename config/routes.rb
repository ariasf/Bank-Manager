Rails.application.routes.draw do
	root to: "bank_transactions#index"
  resources :users
	resources :bank_transactions do
		collection { post :import }
	end	
end
