class EventSpeaker < ActiveRecord::Base
  belongs_to :event
  belongs_to :speaker
  attr_accessible :event_id, :speaker_id, :priority
end
