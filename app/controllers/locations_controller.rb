class LocationsController < ApplicationController
  before_action :select_location, only: [:show, :like]
  def index
    @locations = Location.all.sort_by{|likes| likes.likes_message(current_user)}.reverse

    end
  end

  def show
    @tip = Tip.new
    location_events = LocationsDecorator.new(@location)
    @upcoming_events = location_events.upcoming_events
    @past_events = location_events.past_events
  end


  def like
    @location.update_likes(current_user)
    redirect_to :back
  end

  private
  def select_location
    @location = Location.find(params[:id])
  end
end

