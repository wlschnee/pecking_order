class EventsController < ApplicationController
  before_action :select_event, only: [:show, :update, :edit, :destroy, :join]

  def index
    @events = Event.upcoming_events
  end

  def join
    @event.update_registration(current_user)
    respond_to do |format|
      format.js
    end
  end

  def invite

  end

  def new
    @event = Event.new
    @event.build_location
  end

  def create
    @event = Event.new(event_params)
    if location_params["name"].blank? || location_params["address"].blank?
      flash[:danger] = "You need to give a location for an event"
      redirect_to :back
    else
      @event.lookup_and_set_event_location(location_params)
      @event.parse_time(params)
      @event.host = current_user
      @event.save
      redirect_to events_path(@event)
    end
  end


  def show
    current_user
    @comment = Comment.new
    @comments = @event.comments
  end

  def edit
    if @event.host == current_user
      render :edit
    else
      redirect_to events_path
    end
  end

  def update
    if location_params["name"].blank? || location_params["address"].blank?
      flash[:danger] = "You need to give a location for an event"
      redirect_to :back
    else
      @event.update(event_params)
      @event.lookup_and_set_event_location(location_params)
      @event.parse_time(params)
      @event.save
      redirect_to event_path(@event)
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :meeting_place, :duration)
    end

    def location_params
      params[:event][:location]
    end

    def select_event
      @event = Event.find(params[:id])
    end
end
