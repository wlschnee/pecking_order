class EventsController < ApplicationController
  before_action :select_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    hide_new_location
  end

  def create
    @event = Event.new(event_params)
    @event.start_time = parse_time
    @event.host = @current_user
    @event.save
    redirect_to event_path(@event)
  end

  def show
  end

  def edit
    hide_new_location_edit
  end

  def update
    @event.update(event_params)
    @event.start_time = parse_time
    @event.save
    redirect_to event_path(@event)
  end


  def destroy
  @event.destroy
  redirect_to events_path
  end



  private
    def event_params
      params.require(:event).permit(:name, :meeting_place, :duration, :location_id, location_attributes: [:name, :address])
    end

    def parse_time
      time = params[:event]
      DateTime.new(time["start_time(1i)"].to_i,time["start_time(2i)"].to_i,time["start_time(3i)"].to_i,time["start_time(4i)"].to_i,time["start_time(5i)"].to_i)
    end

    def select_event
      @event = Event.find(params[:id])
    end

    def hide_new_location
      @event.build_location
    end

    def hide_new_location_edit
      select_event
    end
end
