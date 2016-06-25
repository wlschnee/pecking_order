class AddIndexToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_index :registrations, :event_id
    add_index :registrations, :guest_id
  end
end
