module Meetup
  @@events_root      = "https://api.meetup.com/2/open_events"
  @@api_key          = "?key=#{ENV['MEETUP_API_KEY']}"
  @@chicago_lon_lat  = "&city=Chicago&country=us&state=il"

  def self.fetch_chi_events(api_key: @@api_key, chicago_lon_lat: @@chicago_lon_lat)
    puts "fetching all events"

    # returns an array of game hashes with keys:
    # id, title, long_title, images
    HTTParty.get(@@events_root + api_key + chicago_lon_lat)
  end
end