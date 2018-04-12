Rails.application.routes.draw do
  resources :project_users
  resources :projects
  resources :usersrail


	post '/usersrail', to: 'usersrail#create'
	
	
	delete'/usersrail/:id', to:'usersrail#destroy'

	patch'/usersrail/:id', to:'usersrail#update'

	get'/usersrail/:id', to:'usersrail#show'

	





	post '/projects', to: 'projects#create'
	
	
	delete'/projects/:id', to:'projects#destroy'

	patch'/projects/:id', to:'projects#update'

	get'/projects/:id', to:'projects#show'



	



	 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
