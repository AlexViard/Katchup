class ChargesController < ApplicationController
  def new
  end

  def create
  	  @carts = Cart.where(user_id: params[:user_id])
  	  @amount = 0
  	  @carts.each do |t|
  	  	@amount = Item.find(t.item_id).price
  	  end
  	  

	  customer = Stripe::Customer.create({
	    email: params[:stripeEmail],
	    source: params[:stripeToken],
	  })

	  charge = Stripe::Charge.create({
	    customer: customer.id,
	    amount: @amount.round,
	    description: 'Rails Stripe customer',
	    currency: 'eur',
	  })
	  if charge
	  	@carts.each do |t|
	  		Order.create(user_id: params[:user_id], item_id: t.item_id)
	  	end
	  	flash[:sucess] = "Inscription à l'événement payer"
	  	redirect_to root_path
	  end

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path(@event.id)
   end
end
