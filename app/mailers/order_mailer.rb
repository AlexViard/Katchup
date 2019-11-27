
class OrderMailer < ApplicationMailer
  default from: 'no-reply@katchup-app.fr'
	def customer_email(order, user)
		  @order = order
      @user = user
    	@url  = 'http://katchup-app.herokuapp.com'
    	mail(to: @user.email, subject: 'Votre commande est enregistrée!')

  	end



  	def administrator_email(order, user)
  		@order = order
      @user = user
  		@url = 'http://katchup-app.heroku.app.com'
      mail(to: 'thp.mtp.best.groupe@gmail.com', subject:'Une nouvelle commande a été passée')
      
  	end
end
