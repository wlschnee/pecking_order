class ChangePictureDefaultInUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:users, :picture, "http://s3.amazonaws.com/37assets/svn/765-default-avatar.png")
  end
end
