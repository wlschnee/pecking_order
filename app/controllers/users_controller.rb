class UsersController < ApplicationController
  before_action :select_user, only: [:show, :update, :edit, :destroy]

  def index
    if params[:term]
      binding.pry
      @users = User.search(params[:term])
      # User.where("lower(first_name) LIKE ? OR lower(last_name) LIKE ?", "#{params[:term].downcase}%", "#{params[:term].downcase}%" )
    else
      @users = User.all
    end
    respond_to do | format |
      format.html
      format.json { render json:
        @users.pluck_to_hash(['first_name']) }
    end
  end

  def new
    @user = User.new
  end


  # def create
  # => Moved to Devise
    # @user = User.new(user_params)
    # if @user.save
      # session[:user_id] = @user.id
      # flash[:success] = "Account successfully created"
      # redirect_to events_path
    # else
      # flash[:error] = "Invalid, please try again"
      # render :new
    # end
  # end

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
    binding.pry
  end

  def invite_to_event
    @user = User.find_by(first_name: params[:friend_name])
    UserMailer.invite_to_event(@user).deliver_now
    flash[:success] = "Email successfully sent to #{@user.email}"
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def select_user
    @user = User.find(params[:id])
  end

end
