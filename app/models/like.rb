class Like < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  validates_uniqueness_of :user, scope: :location
end
