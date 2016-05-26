include Geocoder
class SearchController < ApplicationController

  def new
    parameters = { term: params[:search_business], limit: 10 }
    if params[:search_location] != ''
      location = params[:search_location]
      result = Yelp.client.search(location, parameters)
    else
      geocoder = Geocoder.search(reqeust.remote_ip)
      location = { latitude: geocoder[0].data['latitude'], longitude: geocoder[0].data['longitude'] }
      result = Yelp.client.search_by_coordinates(location, parameters)
    end
    @results = result.businesses
    respond_to do |format|
      format.js
    end
  end

  def users
    if @user = User.find_by(email: params[:invitation_email])
      @event = Event.find(params[:event_for_email].gsub(/[^\d]/,''))
      UserMailer.invite_to_event(@user, current_user, @event).deliver_now
      flash[:success] = "Email successfully sent to #{@user.email}"
    else
      @user = {name: params[:invitation_name], email: params[:invitation_email]}
      @event = Event.find(params[:event_for_email].gsub(/[^\d]/,''))
      UserMailer.invite_to_service(@user, current_user, @event).deliver_now
      flash[:success] = "Email successfully sent to #{params[:name]} at #{params[:email]}"
    end
    respond_to do |format|
      format.js
    end
  end
end


