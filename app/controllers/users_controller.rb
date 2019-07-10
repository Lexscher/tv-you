class UsersController < ApplicationController

  def index
    all_users
  end 

  def new
    @user = User.new
  end 

  def create
    @user = User.create(user_params)

    redirect_to @user

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
    @user = User.find(params[:id])
  end 

  def user_params
    params.require(:user).permit(:name, :username)
  end 

  def all_users
    @users = User.all 
  end 

end
