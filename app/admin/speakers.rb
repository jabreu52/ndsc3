ActiveAdmin.register Speaker do
	index do
		column :name
		column :image do |speaker|
			image_tag speaker.image, height: 80
		end
		column :description do |speaker|
			truncate(speaker.description, length: 50)
		end
		column :year
		default_actions
  end
end
