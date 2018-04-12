Rails.application.routes.draw do
  resources :admins
  resources :categories
  resources :promises
  resources :project_users
  resources :projects
  resources :users


	post '/users', to: 'users#create'
	
	
	delete'/users/:id', to:'users#destroy'

	patch'/users/:id', to:'users#update'

	get'/users/:id', to:'users#show'

	





	post '/projects', to: 'projects#create'
	
	
	delete'/projects/:id', to:'projects#destroy'

	patch'/projects/:id', to:'projects#update'

	get'/projects/:id', to:'projects#show'



	



	 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
