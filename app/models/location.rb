require 'yelp'
class Location < ActiveRecord::Base
  has_many :events
  has_many :guests, :class_name => "User", through: :events
  has_many :hosts, :class_name => "User", through: :events
  has_many :tips

  def initialize()
    configure_yelp
  end

  private

  def configure_yelp
    client = Yelp::Client.new({ consumer_key: ENV["yelp_consumer_key"],
                            consumer_secret: ENV["yelp_consumer_secret"],
                            token: ENV["yelp_token"],
                            token_secret: ENV["yelp_token_secret"]
                          })
  end
end
