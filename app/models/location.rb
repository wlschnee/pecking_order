class Location < ActiveRecord::Base
  has_many :events
  has_many :guests, :class_name => "User", through: :events
  has_many :hosts, :class_name => "User", through: :events
  has_many :tips
  has_many :likes
  validates :name, uniqueness: true

  def thumbs_up_total
    self.likes.where(likes: true).size
  end

  def thumbs_down_total
    self.likes.where(likes: false).size
  end

  def update_likes(user)
    user_liked?(user) ? unlike(user) : like(user)
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

def like(user)
    self.likes.create(user_id: user.id)
  end
 
 def unlike(user)
    self.likes.find_by(user_id: user.id).destroy
  end


end
