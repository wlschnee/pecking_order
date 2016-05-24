class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    if params.key?('provider')
      @user = User.register_user_with_omniauth(omniauth_params)
      session[:user_id] = @user.id
      session[:flash] = "Logged in as #{@user.full_name}"
      redirect_to events_path
    else
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
  end

  def destroy
    session.delete(:user_id)
    flash.discard
    redirect_to root_url
  end

private

  def omniauth_params
    request.env['omniauth.auth']
  end


end
