Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  resources :users do
  	resources :charges, only: [:create]
  end
  resources :carts
  resources :items
  resources :orders
end
