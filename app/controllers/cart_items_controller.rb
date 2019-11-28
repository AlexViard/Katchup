class CartItemsController < ApplicationController
  def create
   
    @cart = Cart.find(current_user.id)
    CartItem.create(cart: @cart, item_id: params[:item_id])
    #Creates a new cart that keeps the same id (user_id) which means that there will be only one cart
    redirect_to root_path(anchor: "ajout_recent")

  end

  def edit
    
  end

  def update
    
  end

  def destroy
   
    @cartItem = CartItem.find(params[:id])
    @cartItem.destroy
    redirect_to cart_path(current_user.id)
  end
end
