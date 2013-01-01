class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string  :title
      t.string  :first_name
      t.string  :last_name
      t.string  :suffix
      t.string  :organization
      t.string  :email
      t.string  :phone_number
      t.text    :image
      t.text    :notes
      t.text    :description

      t.timestamps
    end
  end
end
