class EventsController < ApplicationController
  before_action :select_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @event.build_location
  end

  def create
    binding.pry
    @event = Event.create(event_params)
    @event.start_time = Event.parse_time(params[:event])
    @event.host = @current_user
    @event.save
    redirect_to event_path(@event)
  end

  def show
  end

  def edit
  end

  def update
    @event.update(event_params)
    @event.start_time = Event.parse_time(params[:event])
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

    # def parse_time(params)
    #   DateTime.new(params["start_time(1i)"].to_i,params["start_time(2i)"].to_i,params["start_time(3i)"].to_i,params["start_time(4i)"].to_i,params["start_time(5i)"].to_i)
    # end

    def select_event
      @event = Event.find(params[:id])
    end
end
