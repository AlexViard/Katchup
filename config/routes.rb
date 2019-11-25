Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  resources :users
  resources :carts
  resources :items
  resources :orders
end
