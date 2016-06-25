class AddIndexToTips < ActiveRecord::Migration[5.0]
  def change
    add_index :tips, :user_id
    add_index :tips, :location_id
  end
end
