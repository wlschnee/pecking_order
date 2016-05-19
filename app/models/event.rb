class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :location
  has_many :registrations
  has_many :guests, :class_name => "User", through: :registrations
  has_many :comments
  accepts_nested_attributes_for :location

end
