class OrderMailer < ApplicationMailer

	def customer_email(order)
		  @order = order
    	@url  = 'http://katchup-app.heroku.app.com' 
    	mail(to: @user.email, subject: 'Votre commande est enregistrée!') 
  	end



  	def administrator_email(order)
  		@order = order
  		@url = 'http://katchup-app.heroku.app.com' 
		  mail(to: thp.mtp.best.groupe@gmail.com, subject:'Une nouvelle commande a été passée') #Don't forget to modify the email (use the administrator's)
  	end
end
