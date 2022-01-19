Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'
end