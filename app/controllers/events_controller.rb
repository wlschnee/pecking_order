class EventsController < ApplicationController
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    redirect_to @event
  end

  def show
  end


  private
    def event_params
    params.require(:event).permit(:location_id,:start_time,:meeting_place,:duration,:host_id)
    end



end
