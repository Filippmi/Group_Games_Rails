class SessionsController < ApplicationController

  def new
    redirect_if_logged_in
  end

  def create
    redirect_if_logged_in
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

  def google
    redirect_if_logged_in
    @user = User.find_or_create_by(username: auth["info"]["first_name"], email: auth["info"]["email"]) do |user|
      user.password = SecureRandom.hex(10)
    end
    if @user && @user.id
      loggin_user
      redirect_to user_path(current_user)
    else
      flash.now[:errors] = "Something went wrong trying to login with your Google account"
      redirect_to login_path
    end
  end

  private
    def auth
      request.env['omniauth.auth']
    end
end