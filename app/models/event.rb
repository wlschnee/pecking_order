class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :location
  has_many :registrations
  has_many :guests, :class_name => "User", through: :registrations
  has_many :comments
  accepts_nested_attributes_for :location

  def self.parse_time(params)
    binding.pry
    DateTime.new(params["start_time(1i)"].to_i,params["start_time(2i)"].to_i,params["start_time(3i)"].to_i,params["start_time(4i)"].to_i,params["start_time(5i)"].to_i)
  end
end
