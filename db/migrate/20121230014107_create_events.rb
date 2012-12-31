class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.boolean :workshop
      t.boolean :session
      t.boolean :show_description, default: false

      t.timestamps
    end
  end
end
