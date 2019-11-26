# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#A modifier avec les bonnes clés d'API
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['GMAIL_LOGIN'],
  :password => ENV['GMAIL_PWD'],
  :domain => 'google.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}