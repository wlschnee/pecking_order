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

   def update_likes(user)
    user_liked?(user) ? unlike(user) : like(user)
  end

  def likes_message(user)
    if user_liked?(user)    &&  self.likes.count == 1
      "<strong>You</strong> liked this location".html_safe
    elsif
      user_liked?(user) &&  self.likes.count >= 1
     "<strong>You</strong> and <strong>#{self.likes.count - 1} other people</strong> like this location".html_safe
    else
      !!user_liked?(user) && self.likes.count >= 1
      "<strong>#{self.likes.count} other people</strong> like this location".html_safe
    end
  end

  private

  def user_liked?(user)
    self.likes.where(user: user).any?
  end

  def like(user)
    self.likes.create(user_id: user.id)
  end

  def unlike(user)
    self.likes.find_by(user_id: user.id).destroy
  end

end
