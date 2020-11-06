Rails.application.routes.draw do
  resources :categories
  resources :exercises
  resources :groups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'session#index'
  
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  post 'logout', to: 'session#destroy'
end
