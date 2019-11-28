class ChargesController < ApplicationController
  def new
  end

  def create
  	  @cart = Cart.find(current_user.id)
  	  @cartItem = CartItem.where(cart_id:@cart.id)
  	  @amount = 0
  	  @cartItem.each do |t|
  	  	@amount += Item.find(t.item_id).price
  	  end


	  customer = Stripe::Customer.create({
	    email: params[:stripeEmail],
	    source: params[:stripeToken],
	  })

	  charge = Stripe::Charge.create({
	    customer: customer.id,
	    amount: @amount.round * 100,
	    description: 'Rails Stripe customer',
	    currency: 'eur',
	  })
	  if charge
	  	Order.create(cart_id: @cart.id, prix_total: @amount)
	  	@cartItem.destroy_all
	  	flash[:sucess] = "Ta commande a bien été prise en compte !"
	  	redirect_to root_path
	  end

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  #redirect_to new_charge_path(@event.id)
   end
end
