class Admin::AboutMeController < ApplicationController
  before_action :load_user

  def index
    @user = User.find(1)
    render :index
  end

  def show
    @user = User.find(1)
  end

  def edit
    @user = User.find(1)
  end

  def update
    @user = User.find(1)
    if @user.update(user_params)
      redirect_to '/admin/about_me'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def load_user
      @user = User.find(1)
    end

    def user_params
      params.require(:user).permit(:description)
    end
end
