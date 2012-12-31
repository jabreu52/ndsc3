class ThirteenController < ApplicationController
  def index
  end

  def program
    @events = Event.where(show_description: true).where("start_time BETWEEN ? AND ?", DateTime.parse('29 Mar 2013'), DateTime.parse('1 Apr 2013')).order("start_time")
    @friday_events = Event.where("start_time BETWEEN ? AND ?", DateTime.parse('29 Mar 2013'), DateTime.parse('30 Mar 2013')).order("start_time")
    @saturday_events = Event.where("start_time BETWEEN ? AND ?", DateTime.parse('30 Mar 2013'), DateTime.parse('31 Mar 2013')).order("start_time")
    @sunday_events = Event.where("start_time BETWEEN ? AND ?", DateTime.parse('31 Mar 2013'), DateTime.parse('1 Apr 2013')).order("start_time")
  end

  def housing
  end

  def transportation
  end

  def contact
  end
end
