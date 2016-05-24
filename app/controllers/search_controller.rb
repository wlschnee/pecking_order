class SearchController < ApplicationController
  def new
    parameters = { term: params[:search], limit: 12 }
    result = Yelp.client.search('New York', parameters)
    @results = result.businesses
    respond_to do |format|
      format.js
    end
  end
end
