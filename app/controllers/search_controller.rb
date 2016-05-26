include Geokit::Geocoders
class SearchController < ApplicationController

  def new
    parameters = { term: params[:search_business], limit: 10 }
    if params[:search_location] != ''
      location = params[:search_location]
      result = Yelp.client.search(location, parameters)
    else
      geocoder = MultiGeocoder.geocode('108.41.19.28')
      location = { latitude: geocoder.lat, longitude: geocoder.lng }
      result = Yelp.client.search_by_coordinates(location, parameters)
    end
    @results = result.businesses
    respond_to do |format|
      format.js
    end
  end

  def users
    @user = User.find(params[:friend_id])
    @event = Event.find(params[:event_id])
    UserMailer.invite_to_event(@user, current_user, @event).deliver_now
    flash[:success] = "Email successfully sent to #{@user.email}"
    respond_to do |format|
      format.js
    end
  end
end


