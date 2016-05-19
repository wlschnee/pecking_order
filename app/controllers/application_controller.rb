class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login, except: [:login, :signup]

private 

def require_login
  unless session[:user_id] != nil #??&& @user.authenticate(params[:password])??
    redirect_to login_path
  end
end

end
