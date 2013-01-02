class SpeakersController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@speaker = Speaker.new
  	@speakers = Speaker.all
  end
end
