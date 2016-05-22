class LocationsController < ApplicationController

  def index
    @locations = Location.all
    respond_to do |format|
      format.html
      format.json {@location = Location.search(params[:term])}
    end
  end

  def show
  @tip = Tip.new
  @location = Location.find(params[:id])
  end



end
