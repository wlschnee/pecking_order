include Geocoder
class SearchController < ApplicationController

  def new
    parameters = { term: params[:search_business], limit: 10 }
    if params[:search_location] != ''
      location = params[:search_location]
      result = Yelp.client.search(location, parameters)
    else
      user_ip = request.remote_ip
      geocoder = Geocoder.search(user_ip)
      location = { latitude: geocoder[0].data['latitude'], longitude: geocoder[0].data['longitude'] }
      result = Yelp.client.search_by_coordinates(location, parameters)
    end
    @results = result.businesses
    respond_to do |format|
      format.js
    end
  end

  def users
<<<<<<< HEAD
    if @user = User.find_by(email: params[:invitation_email]) && params[:event_for_email] != '/'
      binding.pry
=======
    if @user = User.find_by(email: params[:invitation_email]) && params[:event_for_email] != "/"
>>>>>>> 5cc961651f4bc50ee8896d0638e6a00a7491d682
      @event = Event.find(params[:event_for_email].gsub(/[^\d]/,''))
      UserMailer.invite_to_event(@user, current_user, @event).deliver_now
    elsif params[:event_for_email] == '/'
      @user = {name: params[:invitation_name], email: params[:invitation_email]}
      UserMailer.invite_to_service(@user, current_user).deliver_now
    else
      @user = {name: params[:invitation_name], email: params[:invitation_email]}
      @event = Event.find(params[:event_for_email].gsub(/[^\d]/,''))
<<<<<<< HEAD
      UserMailer.invite_to_service(@user, current_user, @event).deliver_now
=======
      UserMailer.invite_to_service_and_event(@user, current_user, @event).deliver_now
>>>>>>> 5cc961651f4bc50ee8896d0638e6a00a7491d682
    end
    respond_to do |format|
      format.js
    end
  end
end
