class GatherUserEvents
  def self.host_or_attendee(user)
    all_user_events = []
    user_events = user.events
    user_events.each do |user_event|
      all_user_events << user_event
    end
    all_registrations = user.registrations
    all_registrations.each do |registration|
      all_user_events << registration.event
    end
    all_user_events
  end
end
