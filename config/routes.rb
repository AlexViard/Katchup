Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  resources :users do
  	resources :charges, only: [:create]
  	resources :carts, only: [:show]	
  end
  resources :items
  resources :orders
end