class Location < ActiveRecord::Base
  has_many :events
  has_many :guests, :class_name => "User", through: :events
  has_many :hosts, :class_name => "User", through: :events
  has_many :tips
  has_many :likes
  validates :name, presence: true
  validates :address, presence: true

  def thumbs_up_total
    self.likes.where(likes: true).size
  end

  def thumbs_down_total
    self.likes.where(likes: false).size
  end

def likes_message(user)
  if user_liked?(user)    &&  self.likes.count == 1
        "<strong>You</strong> liked this location".html_safe
      elsif 
        user_liked?(user) &&  self.likes.count >= 1
     "<strong>You</strong> and <strong>#{self.likes.count - 1} other people</strong> like this location".html_safe
    end
  end

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

 private
  def user_liked?(user)
    self.likes.where(user: user).any?
  end

end
