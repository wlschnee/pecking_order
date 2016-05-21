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

end
