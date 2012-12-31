class Event < ActiveRecord::Base
	has_many :event_speakers
	has_many :speakers, through: :event_speakers
  attr_accessible :description, :end_time, :name, :session, :show_description, :start_time, :venue,
  								:workshop#, :year
  def agenda_time
    "#{start_time.strftime('%l:%M')} - #{end_time.strftime('%l:%M%P')}"
  end
end
