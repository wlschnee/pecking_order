class OnlineHostedFaultImage < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:users, :picture, "http://i.imgur.com/VVc1lle.png")
  end
end
