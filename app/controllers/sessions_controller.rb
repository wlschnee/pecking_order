class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

def new
end

def create
  @user = User.find_by(email: params[:email])
  if @user != nil && @user.authenticate(params[:password])
  session[:user_id] = @user.id
  session[:flash] = "Logged in as #{@user.full_name}"
  redirect_to events_path
  else
  session[:flash] = "Invalid login"
  redirect_to login_path
  end
end

def destroy
session[:user_id] = nil
flash.discard
redirect_to root_url
end


end
