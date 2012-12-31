class CreateEventSpeakers < ActiveRecord::Migration
  def change
    create_table :event_speakers do |t|
      t.references :event
      t.references :speaker

      t.timestamps
    end
    add_index :event_speakers, :event_id
    add_index :event_speakers, :speaker_id
  end
end
