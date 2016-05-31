class Like < ActiveRecord::Base
  belongs_to :location
  delegate :user_id, :location_id, :content
  belongs_to :user
end
