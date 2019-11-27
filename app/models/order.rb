class Order < ApplicationRecord
	has_many :items
	belongs_to :user

<<<<<<< HEAD

=======
>>>>>>> caecc6b8746d46132ff479aecb724efa2e2f8188
	after_create :customer_email
	after_create :administrator_email

	def customer_email
  	  OrderMailer.customer_email(self, self.user).deliver_now
  	end

  	def administrator_email
  	  OrderMailer.administrator_email(self, self.user).deliver_now
  	end
<<<<<<< HEAD
=======
	#after_create :customer_email
	#after_create :administrator_email

	#def customer_email
  #	  OrderMailer.customer_email(self).deliver_now
  #	end

  #	def admnistrator_email
  #	  OrderMailer.administrator_email(self).deliver_now
  #	end
  #	end
>>>>>>> caecc6b8746d46132ff479aecb724efa2e2f8188
end
