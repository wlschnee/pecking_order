class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]
  has_many :events, foreign_key: :host_id
  has_many :registrations, foreign_key: :guest_id
  has_many :comments
  has_many :tips
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :likes
  validates :email, presence: true, uniqueness: true, allow_nil: true, if: 'provider.blank?'
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

  def orphan_events
    events = Event.where(host_id: self.id)
    events.each do |event|
      User.first.events << event
    end
  end

  def self.from_omniauth(auth)
    User.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.name.split(" ").first
      user.last_name = auth.info.name.split(" ").last
      user.email = auth.info.email || "facebook_" + SecureRandom.base64() + "@beef.com"
      user.password = Devise.friendly_token[0,20]
      user.picture = auth.info.image
    end
  end

end
