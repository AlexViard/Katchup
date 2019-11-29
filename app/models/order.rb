class Order < ApplicationRecord
	has_many :carts

	after_create :customer_email
	after_create :administrator_email

	def customer_email
  	  OrderMailer.customer_email(self, Cart.find(self.cart_id)).deliver_now
  	end

  	def administrator_email
  	  OrderMailer.administrator_email(self, Cart.find(self.cart_id)).deliver_now
  	end

end
