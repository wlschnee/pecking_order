class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :location
  has_many :registrations
  has_many :guests, :class_name => "User", through: :registrations
  has_many :comments
  accepts_nested_attributes_for :location, reject_if: :all_blank


  def update_registration(user)
    user_joined?(user) ? leave(user) : join(user)
  end

  def join_class(user)
    if user_joined?(user)
      "btn btn-danger"
    else
      "btn btn-success"
    end
  end

  def join_message(user)
    if user_joined?(user)
      "Leave Event"
    else
      "Join Event"
    end
  end

  def join_name(user)
    user_joined?(user)
  end

private

  def user_joined?(user)
    self.registrations.where(guest_id: user.id).any?
  end

  def join(user)
    self.registrations.create(guest_id: user.id)
  end

  def leave(user)
    self.registrations.find_by(guest_id: user.id).destroy
  end

end
