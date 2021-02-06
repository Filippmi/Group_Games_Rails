class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    redirect_if_not_user
    @game_review = current_user.game_reviews
  end

  def create
    @user = User.new(user_params)
    if @user.save
      loggin_user
      render :welcomepage
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
