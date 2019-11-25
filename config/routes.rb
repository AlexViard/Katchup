Rails.application.routes.draw do
  root 'index#items'
  devise_for :users
  ressources: :carts
  ressources: :items
  ressources: :orders
end
