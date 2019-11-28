class UsersController < ApplicationController

    before_action :connected_user, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user, only: [:show, :edit, :update, :destroy]

	def index
	
	end

	def show
	
		@user = User.find(params[:id])
		@cart = Cart.find(current_user.id)
		@order = Order.where(cart_id:@cart.id)
		@item = Item.all
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

  private

  def connected_user
    if current_user.nil?
      flash[:loggin_needed] = "Please log in."
      redirect_to root_path
    end
  end

  def authenticate_user
    if current_user.id != User.find(params[:id]).id
      flash[:bad_user] = "Please log in."
      redirect_to root_path
    end
  end



end
