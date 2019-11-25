Rails.application.routes.draw do
  root 'index#items'
  devise_for :users
  resources :carts
  resources :items
  resources :orders
end
