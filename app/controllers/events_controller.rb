class EventsController < ApplicationController
  before_action :select_event, only: [:show, :update, :delete]

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    @event.start_time = parse_time
    @event.host = @current_user
    @event.save
    binding.pry
    redirect_to @event
  end

  def show
  end


  private
    def event_params
      params.require(:event).permit(:name, :location_id, :meeting_place,:duration)
    end

    def parse_time
      time = params[:event]
      DateTime.new(time["start_time(1i)"].to_i,time["start_time(2i)"].to_i,time["start_time(3i)"].to_i,time["start_time(4i)"].to_i,time["start_time(5i)"].to_i)
    end

    def select_event
      @event = Event.find(params[:id])
    end
end
