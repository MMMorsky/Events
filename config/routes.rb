Rails.application.routes.draw do
  resources :users
  resources :locations
  resource :session, only: [:new, :create, :destroy]
  root 'locations#index'
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end