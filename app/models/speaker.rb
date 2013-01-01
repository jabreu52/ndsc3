class Speaker < ActiveRecord::Base
	has_many :event_speakers
	has_many :events, through: :event_speakers
  attr_accessible :description, :email, :first_name, :image, :keynote, :last_name, :notes,
  								:organization, :phone_number, :suffix, :title
  mount_uploader :image, ImageUploader

  def name
  	"#{first_name} #{last_name}"
  end
  def professional_name
  	"#{title} #{first_name} #{last_name}#{', ' + suffix if suffix}"
  end
  def priority
    EventSpeaker.find_by_speaker_id(id).priority
  end
end
