class Location < ActiveRecord::Base
  has_many :events
  has_many :guests, :class_name => "User", through: :events
  has_many :hosts, :class_name => "User", through: :events
  has_many :tips

  def self.search(term)
    where("LOWER(name) LIKE :term OR LOWER(address) LIKE :term", term: "%#{term.downcase}%")
  end

end
