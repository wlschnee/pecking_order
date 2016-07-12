class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :location
  has_many :registrations
  has_many :guests, :class_name => "User", through: :registrations
  has_many :comments
  accepts_nested_attributes_for :location
  accepts_nested_attributes_for :comments
  validates :start_time, presence: true
  validates :location, presence: true
  validates :duration, inclusion: { in: %w(🐰 🐼 🐢),
    message: "%{value} is not a 🐰(fast), 🐼(chill), or 🐢(super chill) "}

  def self.upcoming_events
    upcoming = Event.where("start_time > ?", DateTime.now)
    upcoming.map do |event|
      event = EventDecorator.new(event)
    end
  end

  def update_registration(user)
    user_joined?(user) ? leave(user) : join(user)
  end


  def join_class(user)
    if user_joined?(user)
      "btn btn-danger"
    else
      "btn btn-success"
    end
  end

  def join_message(user)
    if user_joined?(user)
      "Leave Event"
    else
      "Join Event"
    end
  end

  def lookup_and_set_event_location(location_attributes)
    self.location = Location.find_or_create_by(name: location_attributes[:name], address: location_attributes[:address], picture: location_attributes[:picture])
  end

  def parse_time(time_as_string)
    self.start_time = Time.zone.parse(time_as_string)
  end

private

  def user_joined?(user)
    self.registrations.where(guest_id: user.id).any?
  end

  def join(user)
    self.registrations.create(guest_id: user.id)
  end

  def leave(user)
    self.registrations.find_by(guest_id: user.id).destroy
  end

end
