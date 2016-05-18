class User < ActiveRecord::Base
  has_many :events, foreign_key: :host_id
  has_many :comments
  has_many :tips
  has_secure_password
  validates :password_digest, presence: true, allow_nil: true
  validates :email, presence: true, uniqueness: true, allow_nil: true
  validates_presence_of :first_name, :last_name,

  def full_name
    "#{first_name} #{last_name}"
  end

end