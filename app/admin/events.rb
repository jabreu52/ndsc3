ActiveAdmin.register Event do
	config.sort_order = "start_time_asc"
	index do
		column :name
		column :venue
		column :start_time
		column :end_time
		column :description do |event|
			truncate(event.description, length: 50)
		end
		default_actions
  end
end
