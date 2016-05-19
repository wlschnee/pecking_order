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

end
