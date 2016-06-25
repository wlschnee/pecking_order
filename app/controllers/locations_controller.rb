class LocationsController < ApplicationController

  def index
    @locations = Location.all.sort_by{|likes| likes.likes_message(current_user)}.reverse

    end
  end

  def show
    @tip = Tip.new
    @location = Location.find(params[:id])
  end


  def like
    @location = Location.find(params[:id])
    @location.update_likes(current_user)
    redirect_to :back
  end

end

