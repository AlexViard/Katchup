class ItemsController < ApplicationController

  def index
    @items = Item.all
    @cart = Cart.all
  end

  def show
    @cart = CartItem.all
    @item = Item.find(params[:id])
   
  end

  def new
   
  end

  def create
   
  end

  def edit
   
  end

  def update
    
  end

  def destroy
    
  end
end
