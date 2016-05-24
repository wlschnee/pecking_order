class EventsController < ApplicationController
  before_action :select_event, only: [:show, :update, :edit, :destroy, :join]
  autocomplete :location, :name, :full => true, :extra_data => [:address]

  def index
    @events = Event.upcoming_events
  end

  def join
    @event.update_registration(current_user)
    respond_to do |format|
      format.js
    end
  end

  def new
    @event = Event.new
    @event.build_location
  end

  def create
    @event = Event.create(event_params)
    @event.lookup_and_set_event_location(location_params)
    @current_user = User.find_by(id: session[:user_id] )
    @event.parse_time(params)
    @event.host = @current_user
    @event.save
    redirect_to events_path(@event)
  end


  def show
    @current_user = User.find_by(id: session[:user_id])
    @comment = Comment.new
    @comments = @event.comments
  end

  def edit
    @current_user = User.find_by(id: session[:user_id])
    if @event.host == @current_user
      render :edit
    else
      redirect_to events_path
    end
  end

  def update
    if event_params["location_attributes"]["name"].blank? && event_params["location_id"].blank?
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
      params[:event][:location_attributes]
    end

    def select_event
      @event = Event.find(params[:id])
    end
end
