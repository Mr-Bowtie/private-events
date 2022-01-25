Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :events
  resources :users_events, only: [:new, :create, :destroy]
  resources :invitations, only: [:new, :create, :destroy, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'
end
