Rails.application.routes.draw do
  root 'items#index'
  devise_for :users

  resources :users do
  	resources :avatar, only: [:create]
  end
  resources :carts
  resources :items
  resources :orders
<<<<<<< HEAD


  namespace :admin do
  root 'admins#index'
  resources :admins
  resources :users
  resources :items
  resources :orders
end
=======
  resources :teams, only:[:index]
>>>>>>> 71c1382ad721f0bbf4ad199f66479ced8e634500
end
