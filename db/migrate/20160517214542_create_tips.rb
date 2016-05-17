class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :content

      t.timestamps null: false
    end
  end
end
