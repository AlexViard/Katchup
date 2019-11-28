class CartsController < ApplicationController
  before_action :current_user_cart, only: [:show, :create, :destroy]
  def index
    
  end

  def show
   
    @cart = Cart.find(current_user.id)
    @cart_item = CartItem.where(cart_id:@cart.id)
    @item = Item.all
    @order = Order.new
  end

  def new
   
  end

  def create
    CartItem.create(cart: @cart, item_id: params[:item_id])
    #Creates a new cart that keeps the same id (user_id) which means that there will be only one cart
    redirect_to root_path(anchor: "ajout_recent")

  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
    @cart = Cart.find(params[:item_id])
    @cart.destroy
    redirect_to cart_path(current_user.id)
  end

  private

  def current_user_cart
    cart = Cart.find(current_user.id)
    if current_user == cart.user_id
      flash[:loggin_needed] = "Not your cart"
      redirect_to root_path
    end
  end
end
