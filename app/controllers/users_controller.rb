class UsersController < ApplicationController
  before_action :select_user, only: [:show, :update, :edit,:destroy]
  skip_before_action :require_login, only: [:new, :create]

def index
  @users = User.all
end

def new
  @user = User.new
end

def create
  @user = User.create(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new 
      end
end

def show
  
end

def edit
end

def update
  @user.update(user_params)
  session[:flash] = "User updated"
  redirect_to user_path
end

def destroy
  @user.destroy
  session[:flash] = "User deleted" 
  redirect_to login_path
end

private
def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
end

def select_user
  @user = User.find(params[:id])
end

end
