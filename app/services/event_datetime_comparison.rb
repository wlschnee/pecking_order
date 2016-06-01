class EventDatetimeComparison

  def self.dated_events(object)
    if object.class == User
      all_events = GatherUserEvents.host_or_attendee(object)
    else
      all_events = object.events
    end
    self.divide_events(all_events)
  end

  def self.divide_events(all_events)
    events_hash = {upcoming: [], past: []}
    all_events.each do |event|
      event = EventDecorator.new(event)
      if event.start_time > DateTime.now
        events_hash[:upcoming] << event
      else
        events_hash[:past] << event
      end
    end
    events_hash
  end

end
