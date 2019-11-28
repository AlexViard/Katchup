class Admin::BasesController < ApplicationController
  before_action :authenticate_user!, :require_admin

   # Methods verification Admin

   def require_admin
     unless current_user.is_admin
     	flash[:error] = "Vous êtespas admin"
       redirect_to root_path
     end
   end
 end
