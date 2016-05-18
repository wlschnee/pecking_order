class UsersController < ApplicationController

def index
  @users = User.all
end

def new
  @user = User.new
end

def create
  @user = User.create(user_params)
  redirect_to @user
end

def show
  @user = User.find(params[:id])
  render :show
end

def edit
 @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  session[:flash] = "User updated"
  redirect_to user_path
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  session[:flash] = "User deleted" 
  redirect_to login_path
end

private
def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
end

end
