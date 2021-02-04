class SessionsController < ApplicationController

  def new
    
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      loggin_user
      redirect_to user_path(current_user)
    else
      flash.now[:error] = ["Username or Password was incorrect"]
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end