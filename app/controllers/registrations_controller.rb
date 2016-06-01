class RegistrationsController < ApplicationController

  def join
    @registration = Registration.new
    @registration.guest_id = current_user.id
    @registration.event_id = params[:id]
    @registration.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    binding.pry
    @user.orphan_events
    @user.registrations.destroy
    @user.destroy
    session[:flash] = "User deleted"
    session[:user_id] = nil
    redirect_to login_path
  end

end
