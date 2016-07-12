class EventDetailSetter
  attr_reader :event_params, :location_params, :time_params, :current_user

  def initialize(event_params, location_params, time_params, current_user)
    @event_params, @location_params, @time_params, @current_user = event_params, location_params, time_params, current_user
  end

  def set_event_details(event)
    event.lookup_and_set_event_location(location_params)
    event.parse_time(time_params)
    event.host = current_user
    event.save
  end

end