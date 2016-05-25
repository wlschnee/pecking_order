
class SearchController < ApplicationController

  def new
    parameters = { term: params[:search], limit: 12 }
    result = Yelp.client.search('Financial District', parameters)
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


