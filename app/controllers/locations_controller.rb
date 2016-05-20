class LocationsController < ApplicationController

  def index
    @locations = Location.all
    respond_to do |format|
      format.html
      format.json {@location = Location.search(params[:term])}
    end
  end

  def show
  @location = Location.find(params[:id])
  end

  def like 
    binding.pry
  @location = Location.find(params[:id])
  Like.create(like: params[:like], user: User.first, location: @location)
  flash[:success] = "You have like this post"
  redirect_to :back
  end




end
