class Tip < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  delegate :user_id, :location_id, :content
end
