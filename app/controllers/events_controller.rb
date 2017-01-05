require "pp"
require 'JSON'
class EventsController < ApplicationController
  def index
    @events = Meetup.fetch_chi_events
    @events = @events["results"]
    @events = set_start_time(@events)

    # converts events to an openstruct, needed for simplecal gem
    @events = JSON.parse(@events.to_json, object_class: OpenStruct)
  end

  private

  def set_start_time(events)
    events.each do |event|
      event[:start_time] = Time.at(event["time"] / 1000)
    end
    events
  end

end
