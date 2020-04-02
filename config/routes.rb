Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	namespace :admin do
		get '/dashboard' => 'home#index'
		root 'sessions#new'
		get '/login' => 'sessions#new'
		post '/login' => 'sessions#create'
		get '/logout' => 'sessions#destroy'
	end
end
