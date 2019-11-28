class UserMailer < ApplicationMailer
	 default from: 'no-reply@katchup-app.fr'

	  def welcome_email(user)
		   
		    @user = user 
		    @url  = 'http://katchup-app.heroku.app.com'     
		    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
 	  end
end
