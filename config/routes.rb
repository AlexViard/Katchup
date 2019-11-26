Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  resources :users do
  	resources :avatar, only: [:create]
  end
  resources :carts
  resources :items
  resources :orders
  resources :teams, only:[:index]
end
