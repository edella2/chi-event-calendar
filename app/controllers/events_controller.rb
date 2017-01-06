require "pp"
require 'JSON'
class EventsController < ApplicationController
  def index
    if event_params["search"] && event_params["search"] != ""
      @events = Meetup.fetch_chi_events_search(search: event_params["search"])
    else
      @events = Meetup.fetch_chi_events
    end
    @events = @events["results"]
    @events = set_start_time(@events)

    # converts events to an openstruct, needed for simplecal gem
    @events = JSON.parse(@events.to_json, object_class: OpenStruct)
  end

  private

  def event_params
    params.permit(:search)
  end

  def set_start_time(events)
    events.each do |event|
      event[:start_time] = Time.at(event["time"] / 1000)
    end
    events
  end

end
