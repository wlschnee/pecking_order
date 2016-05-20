class SearchController < ApplicationController
  def new
    binding.pry
    parameters = { term: params[:search], limit: 12 }
    @results = Yelp.client.search('Financial District', parameters)
    # respond_to do |format|
    #   format.js
    # end
    binding.pry
  end
end
