class UsersController < ApplicationController
  before_action :select_user, only: [:show, :update, :edit, :destroy]
  skip_before_action :require_login, only: [:new, :create]

  def index
    @users = User.all
    respond_to do | format |
      format.json
      format.html
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.set_confirmation_token
      @user.save(validate: false)
      UserMailer.registration_confirmation(@user).deliver_now
      session[:flash] = "Please confirm your email address to continue."
      redirect_to login_path
    else
      flash[:error] = "Invalid, please try again"
      render :new
    end
  end

  def confirm_email
    user = User.find_by_confirm_token(params[:token])
    if user
      user.validate_email
      user.save(validate: false)
      session[:user_id] = user.id
      redirect_to events_path
    else
      session[:flash] = "Sorry, user does not exist"
      redirect_to root_url
    end
  end

  def show
  end

  def contact
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
    session[:user_id] = nil
    redirect_to login_path
  end

  def invite_to_event
    binding.pry
    @user = User.find_by(first_name: params[:friend_name])
    UserMailer.invite_to_event(@user).deliver_now
    session[:flash] = "Email successfully sent to #{@user.email}"
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def select_user
    @user = User.find(params[:id])
  end

end
