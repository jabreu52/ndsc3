class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string  :name
      t.string  :image
      t.string  :organization
      t.string  :email
      t.string  :phone_number
      t.text    :notes
      t.text    :description

      t.timestamps
    end
  end
end
