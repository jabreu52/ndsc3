ActiveAdmin.register EventSpeaker do
  # controller do
  #   def scoped_collection
  #   	event_ids = Event.where{start_time > DateTime.now}.map(&:id)
  #   	EventSpeaker.where(event_id: event_ids)
  #   end
  # end

	index do
		column "Event" do |event_speaker|
			Event.find_by_id(event_speaker.event_id).name
		end
		column "Speaker" do |event_speaker|
			Speaker.find_by_id(event_speaker.speaker_id).name
		end
		default_actions
	end

  form do |f|
		f.inputs "Details" do
			f.input :event, collection: Event.where{start_time > DateTime.now}
			f.input :speaker, collection: Speaker.all.sort_by!{|s| s.first_name}
			f.input :priority
			f.buttons
		end
  end
end
