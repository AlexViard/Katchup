class Order < ApplicationRecord
	has_many :items
	belongs_to :user

	after_create :customer_email
	after_create :administrator_email

	def customer_email
  	  OrderMailer.customer_email(self, self.user).deliver_now
  	end

  	def administrator_email
  	  OrderMailer.administrator_email(self, self.user).deliver_now
  	end
	#after_create :customer_email
	#after_create :administrator_email

	#def customer_email
  #	  OrderMailer.customer_email(self).deliver_now
  #	end

  #	def admnistrator_email
  #	  OrderMailer.administrator_email(self).deliver_now
<<<<<<< HEAD
  #	end
=======
  #	end 
>>>>>>> 97fc2dfe47058832aa768eb49a947b22b850477d
end
