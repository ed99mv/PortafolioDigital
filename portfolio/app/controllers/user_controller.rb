class UserController < ApplicationController
    include Rolify
    def index

        @user = User.find(1)
        @user.add_role :admin
        render :index
        authorize @user
        
    end
end
