class SpeakersController < ApplicationController
  def index
  	@speaker = Speaker.new
  	@speakers = Speaker.all
  end
end
