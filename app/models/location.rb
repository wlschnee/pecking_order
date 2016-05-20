class Location < ActiveRecord::Base
  has_many :events
  has_many :guests, :class_name => "User", through: :events
  has_many :hosts, :class_name => "User", through: :events
  has_many :tips
  has_many :likes
  validates :name, uniqueness: true

  def previous_events
    previous_events = []
    self.events.each do |event|
      if event.start_time < Time.zone.now
        previous_events << event
      end
    end
    previous_events
  end

  def upcoming_events
    upcoming_events = []
    self.events.each do |event|
      if event.start_time > Time.zone.now
        upcoming_events << event
      end
    end
    upcoming_events
  end

end
