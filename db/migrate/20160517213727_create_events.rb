class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.datetime :start_time
      t.string :meeting_place
      t.string :duration
      t.belongs_to :host

      t.timestamps null: false
    end
  end
end
