class UsersController < ApplicationController
  before_action :authorized, only: [ :show ]

  def index
    all_users
  end 

  def new
    @user = User.new
  end 

  def create

    @user = User.create(user_params)

    if @user.valid?
      redirect_to @user
    else
      redirect_to new_user_path
    end

  end 

  def show
    find_user
  end 
  
  def edit 
   find_user
  end 

  def update
    find_user
    #byebug
    @user = @user.update(user_params)

    redirect_to user_path
  end 

  def destroy
    find_user
    @user.destroy

    redirect_to users_path
  end 

  private

  def find_user
    @user = User.find(session[:user_id])
  end 

  # def current_user
  #   @current_user = User.find(session[:user_id])
  # end

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end 

  def all_users
    @users = User.all 
  end 

end
