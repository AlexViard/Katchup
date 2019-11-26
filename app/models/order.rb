class Order < ApplicationRecord
	has_many :items
	belongs_to :user

	after_create :customer_email 
	after_create :administrator_email

	def customer_email
  	  OrderMailer.customer_email(self).deliver_now
  	end

  	def admnistrator_email
  	  OrderMailer.administrator_email(self).deliver_now
  	end 
end
