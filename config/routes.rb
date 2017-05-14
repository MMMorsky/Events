Rails.application.routes.draw do
  resources :categories
  resources :attendances
  resources :comments
  resources :events
  resources :users
  resources :locations
  resource :session, only: [:new, :create, :destroy]
  root 'events#index'
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  get 'signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
