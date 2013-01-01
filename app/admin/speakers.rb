ActiveAdmin.register Speaker do
  controller do
    def scoped_collection
      Speaker.joins(:events).where{events.start_time > DateTime.now}
    end
  end
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
end
