class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string    :name
      t.string    :venue
      t.datetime  :start_time
      t.datetime  :end_time
      t.text      :description
      t.boolean   :session
      t.boolean   :show_in_program, default: false

      t.timestamps
    end
  end
end
