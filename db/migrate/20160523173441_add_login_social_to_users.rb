class AddLoginSocialToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :login_social, :boolean
  end
end
