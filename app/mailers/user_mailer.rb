class UserMailer < ApplicationMailer

	  def welcome_email(user)
		   
		    @user = user 
		    @url  = 'http://katchup-app.heroku.app.com'     
		    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
 	  end
end
