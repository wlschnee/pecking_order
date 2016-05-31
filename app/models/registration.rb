class Registration < ActiveRecord::Base
  belongs_to :guest, :class_name => "User"
  belongs_to :event
  delegate :location_id, :start_time, :meeting_place, :duration, :host_id, :name, :to => :event, :prefix => true
end
