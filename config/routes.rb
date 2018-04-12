Rails.application.routes.draw do
  resources :funds
  resources :wishlists
  resources :user_promises
  resources :admins
  resources :categories
  resources :promises
  resources :project_users
  resources :projects
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
