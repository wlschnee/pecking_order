class User < ActiveRecord::Base
  has_many :events, foreign_key: :host_id
  has_many :registrations, foreign_key: :guest_id
  has_many :comments
  has_many :tips
  has_many :friendships
  has_many :friends, :through => :friendships

  has_secure_password
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :email, presence: true, uniqueness: true, allow_nil: true
  validates_presence_of :first_name, :last_name,

  def full_name
    "#{first_name} #{last_name}"
  end

  def upcoming_events
    @all_events = []
    @something = self.events
    @something.each do |something|
      @all_events << something
    end
    @all_registrations = self.registrations
    @all_registrations.each do |registration|
      @all_events << registration.event
    end
    @upcoming = @all_events.select do |event|
      event.start_time > DateTime.now
    end
    @upcoming
  end

  def past_events
    @all_events = []
    @something = self.events
    @something.each do |something|
      @all_events << something
    end
    @all_registrations = self.registrations
    @all_registrations.each do |registration|
      @all_events << registration.event
    end
    @past = @all_events.select do |event|
      event.start_time < DateTime.now
    end
    @past
  end

end
