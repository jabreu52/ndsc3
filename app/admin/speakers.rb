ActiveAdmin.register Speaker do
  # controller do
  #   def scoped_collection
  #     Speaker.joins(:events).where{events.start_time > DateTime.now}
  #   end
  # end
	index do
		column :name
		column :image do |speaker|
			image_tag speaker.image, height: 80
		end
		column :description do |speaker|
			truncate(speaker.description, length: 50)
		end
		default_actions
  end

  form( html: { multipart: true } )  do |f|
		f.inputs "Details" do
			f.input :title
			f.input :first_name
			f.input :last_name
			f.input :suffix
			f.input :email
			f.input :phone_number
			f.input :organization
			f.input :image, as: :file
			f.input :description
			f.input :notes
			f.buttons
		end
  end
end
