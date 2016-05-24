class ChangePictureDefaultInUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:users, :picture, "/assets/default_profile.png")
  end
end
