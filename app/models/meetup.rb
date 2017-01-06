module Meetup
  @@events_root      = "https://api.meetup.com/2/open_events"
  @@api_key          = "?key=#{ENV['MEETUP_API_KEY']}"
  @@chicago          = "&city=Chicago&country=us&state=il"
  @@topic            = "&topic="

  def self.fetch_chi_events(api_key: @@api_key, city: @@chicago)
    puts "fetching all events"

    # returns an array of game hashes with keys:
    # id, title, long_title, images
    HTTParty.get(@@events_root + api_key + city)
  end

  def self.fetch_chi_events_search(search = "")
    puts "fetching search events"
    p search[:search]
    # returns an array of game hashes with keys:
    # id, title, long_title, images
    HTTParty.get(@@events_root + @@api_key + @@chicago + @@topic + search[:search])
  end
end