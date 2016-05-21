class LocationsController < ApplicationController

  def index
    @locations = Location.all.sort_by{|likes| likes.thumbs_up_total}.reverse
    respond_to do |format|
      format.html
      format.json {@location = Location.search(params[:term])}
    end
  end

  def show
  @location = Location.find(params[:id])
  end

  def like 
  @location = Location.find(params[:id])
  like = Like.create(likes: params[:likes], user: User.first, location: @location)
  redirect_to :back
  end




end
