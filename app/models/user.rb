class User < ActiveRecord::Base
  has_many :events, foreign_key: :host_id
  has_many :comments
  has_many :tips
end
