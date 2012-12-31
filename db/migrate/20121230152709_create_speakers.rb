class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :keynote
      t.string :year

      t.timestamps
    end
  end
end
