class UserDecorator < SimpleDelegator
  def upcoming_events
    EventDatetimeComparison.dated_events(self)[:upcoming]
  end

  def past_events
    EventDatetimeComparison.dated_events(self)[:past]
  end
end
