Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  # controllers: {
  #   sessions:      'admin_users/sessions',
  #   passwords:     'admin_users/passwords',
  #   registrations: 'admin_users/registrations'
  # }
  ActiveAdmin.routes(self)
  resources :hoges
  root 'top#index'
  resources :products, only: [:index, :create]
  get 'users/:id' => 'users#show'
end
