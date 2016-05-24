class AddPicturesToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :picture, :string
  end
end
