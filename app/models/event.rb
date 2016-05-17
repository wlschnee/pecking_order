class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  has_many :registrations
  has_many :guests, :class_name => "User", through: :registrations
  has_many :comments
end
