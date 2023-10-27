class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        render :index
    end

    def about
        @user = User.find(1)
        render :about
        
    end
end
