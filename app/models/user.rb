class User < ActiveRecord::Base
  has_many :events, foreign_key: :host_id
  has_many :comments
  has_many :tips
  has_secure_password
  validates_presence_of :first_name, :last_name, :email, :password_digest
  validates :email, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end

end