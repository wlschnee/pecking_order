class LocationsController < ApplicationController

  def index
  @locations = Location.all
  respond_to do |format|
    format.html  
    format.json {@location = Location.search(params[:term])}
  end

  def show
  @location = Location.find(params[:id])
  end



end
