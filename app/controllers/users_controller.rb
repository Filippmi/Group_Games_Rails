class UsersController < ApplicationController

  def new
    redirect_if_logged_in
    @user = User.new
  end

  def show
    redirect_if_not_user
    @game_review = current_user.game_reviews
  end

  def create
    redirect_if_logged_in
    @user = User.new(user_params)
    if @user.save
      loggin_user
      redirect_to user_path(current_user)
    else
      flash.now[:error] = @user.errors.full_messages
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  
    def redirect_if_not_user
      redirect_to user_path(current_user) unless current_user
    end
end
