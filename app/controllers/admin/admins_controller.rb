class Admin::AdminsController < Admin::BasesController

    def index
      @nb_users = User.all
    end

end
