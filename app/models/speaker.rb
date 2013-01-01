class Speaker < ActiveRecord::Base
	has_many :event_speakers
	has_many :events, through: :event_speakers
  attr_accessible :description, :image, :keynote, :name
end
