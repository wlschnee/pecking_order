class AddDefaultPhotoToLocations < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:locations, :picture, "http://i.imgur.com/Ths4eHf.png")
  end
end
