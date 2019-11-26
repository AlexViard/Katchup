Rails.application.routes.draw do
  root 'items#index'
  devise_for :users

  resources :users do
  	resources :charges, only: [:create]
  	resources :carts, only: [:show]	
  	resources :avatar, only: [:create]
  end
  resources :items
  resources :orders


  namespace :admin do
    root 'admins#index'
    resources :admins
    resources :users
    resources :items
    resources :orders
  end
  resources :teams, only:[:index]
end
