Rails.application.routes.draw do
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	mount Ckeditor::Engine => '/ckeditor'

	namespace :admin do

		get '/dashboard' => 'home#index'
		root to: 'sessions#new'
		get '/login' => 'sessions#new'
		post '/login' => 'sessions#create'
		get '/logout' => 'sessions#destroy'

		resources :users
		resources :user_roles
	end
end
