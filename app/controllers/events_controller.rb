class EventsController < ApplicationController
  before_action :select_event, only: [:show, :update, :edit, :destroy, :join]

  def index
    @events = Event.all
  end

  def join
    @event.update_registration(current_user)
    respond_to do |format|
      format.js
    end
  end

  def new
    @event = Event.new
    hide_new_location
  end

  def create
    @event = Event.create(event_params)
    @current_user = User.find_by(id: session[:user_id] )
    @event.start_time = parse_time
    @event.host = @current_user
    @event.save
    redirect_to event_path(@event)
  end

  def show
    @current_user = User.find_by(id: session[:user_id])
  end

  def edit
    hide_new_location_edit
    @current_user = User.find_by(id: session[:user_id])
    if @event.host == @current_user
      render :edit
    else
      redirect_to events_path
    end
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

    def hide_new_location
      @event.build_location
    end

    def hide_new_location_edit
    end
end
