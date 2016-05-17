class Location < ActiveRecord::Base
  has_many :events
  has_many :users, through: :events
  has_many :tips
end
