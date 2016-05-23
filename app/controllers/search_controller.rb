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
    @users = User.all
    binding.pry
    @user = @users.find_by(params[:name])
    respond_to do |format|
      format.js
    end
  end
end
