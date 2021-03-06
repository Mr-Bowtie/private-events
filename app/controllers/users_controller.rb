class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to root_path
    end
  end

  def index
    @users = User.search(params[:search])
  end
end
