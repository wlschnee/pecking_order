class CreateLikesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :location_id
      t.boolean :likes
    end
  end
end
