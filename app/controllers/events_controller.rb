require "pp"
class EventsController < ApplicationController
  def index
    @events = Meetup.fetch_chi_events
    @events = @events["results"]
  end

end
