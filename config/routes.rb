Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :project_categories

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :rols
  resources :funds do
    member do
      get :confirm_mail
    end
  end
  resources :wishlists
  resources :user_promises
  resources :categories
  resources :promises
  resources :project_users
  resources :projects
  resources :users
  resources :searches


  root to: 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
