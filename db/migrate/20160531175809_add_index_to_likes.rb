class AddIndexToLikes < ActiveRecord::Migration[5.0]
  def change
    add_index :likes, :user_id
    add_index :likes, :location_id
  end
end
