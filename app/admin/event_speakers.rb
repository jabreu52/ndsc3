ActiveAdmin.register EventSpeaker do
	index do
		column "Event" do |event_speaker|
			Event.find_by_id(event_speaker.event_id).name
		end
		column "Speaker" do |event_speaker|
			Speaker.find_by_id(event_speaker.speaker_id).name
		end
	end
end
