class AddIndexToEvents < ActiveRecord::Migration[5.0]
  def change
    add_index :events, :location_id
  end
end
