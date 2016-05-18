class SessionsController < ApplicationController

def new
end

def create
  @user = User.find_by(email: params[:email])
  if @user != nil && @user.authenticate(params[:password]) 
  session[:flash] = "Logged in as #{@user.full_name}"
  session[:user_id] = @user.id
  redirect_to users_path
  else
  session[:flash] = "Invalid login"
  redirect_to login_path
  end
end

end
