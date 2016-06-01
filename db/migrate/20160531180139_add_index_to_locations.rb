class AddIndexToLocations < ActiveRecord::Migration[5.0]
  def change
    add_index :locations, :name
  end
end
