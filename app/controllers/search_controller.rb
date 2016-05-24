

result = Yelp.client.search('Financial District', parameters)class SearchController < ApplicationController
  def new
    parameters = { term: params[:search], limit: 12 }
    result = Yelp.client.search('Financial District', parameters)
    @results = result.businesses
    respond_to do |format|
      format.js
    end
  end

  def users
    @user = User.find_by(first_name: params[:friend_name])
    UserMailer.invite_to_event(@user).deliver_now
    flash[:success] = "Email successfully sent to #{@user.email}"
    redirect_to events_path
  end
end


