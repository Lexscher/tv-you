class AuthController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    # byebug
    if @user && @user.authenticate(params[:password])
      flash[:message] = "Logging in #{@user.name}."
      session[:user_id] = @user.id 

      redirect_to @user   
    else
      flash[:message] = "Invalid Username or Password."
      redirect_to new_auth_path
    end
  end

  def destroy
    #byebug
    session[:user_id] = nil 
    redirect_to login_path
  end 
  
end