class Admin::UsersController < Admin::BasesController

	def index
		@users = User.all
	end

	def edit
			@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
      if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], is_admin: params[:is_admin])
        flash[:success] = "L'utilisateur a bien etait modifier !"
        redirect_to admin_users_path
      else
        render :edit
      end
	end


end
