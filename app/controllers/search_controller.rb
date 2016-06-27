class SearchController < ApplicationController
include Adapter
  def new
    user_ip = request.remote_ip
    @results = YelpSearcher.search(params, user_ip)
    respond_to do |format|
      format.js
    end
  end

  def users
    if User.find_by(email: params[:invitation_email]) && params[:event_for_email] != "/"
      @user = User.find_by(email: params[:invitation_email])
      @event = Event.find(params[:event_for_email].gsub(/[^\d]/,''))
      UserMailer.invite_to_event(@user, current_user, @event).deliver_now
    elsif params[:event_for_email] == ''
      @user = {name: params[:invitation_name], email: params[:invitation_email]}
      UserMailer.invite_to_service(@user, current_user).deliver_now
    else
      @user = {name: params[:invitation_name], email: params[:invitation_email]}
      @event = Event.find(params[:event_for_email].gsub(/[^\d]/,''))
      UserMailer.invite_to_service_and_event(@user, current_user, @event).deliver_now
    end
    respond_to do |format|
      format.js
    end
  end
end
