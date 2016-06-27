class AddIndexToComments < ActiveRecord::Migration[5.0]
  def change
    add_index :comments, :user_id
    add_index :comments, :event_id
  end
end
