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

  def self.upcoming_events
    @all_events = Event.all
    @upcoming = []
    @all_events.each do |event|
      if event.start_time > DateTime.now
        @upcoming << event
      end
    end
    @upcoming
  end

  def update_registration(user)
    user_joined?(user) ? leave(user) : join(user)
  end

  def format_time
    start_time.strftime("%a, %b %-d, %Y, %I:%M %p")
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

  def join_name(user)
    user_joined?(user)
  end

  def lookup_and_set_event_location(location_attributes)
    self.location = Location.find_or_create_by(name: location_attributes[:name], address: location_attributes[:address])
  end

  def parse_time(params)
    time = params[:event]
    self.start_time = Time.zone.local(time["start_time(1i)"].to_i,time["start_time(2i)"].to_i,time["start_time(3i)"].to_i,time["start_time(4i)"].to_i,time["start_time(5i)"].to_i)
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
