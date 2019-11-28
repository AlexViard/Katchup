Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
<<<<<<< HEAD
  
  resources :users  do 
  	resources :charges, only: [:create]
  	resources :carts, only: [:show,:destroy,:create], :path => "mon_panier"
=======

  resources :users do
>>>>>>> 4a5c1f9fc7a205e3a42ff8fc376dd9a2caab0d3d
  	resources :avatar, only: [:create]
  end
  resources :charges, only: [:create]
  resources :carts, only: [:show,:destroy,:create]
  resources :cart_items, only: [:create, :destroy]
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
  resources :contacts, only:[:index]
end
