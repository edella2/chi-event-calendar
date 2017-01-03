class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string    "name"
      t.string    "link"
      t.string    "status"
      t.string    "waitlist_count"
      t.string    "yes_rsvp_count"

      # venue info
      t.string    "venue_name"
      t.string    "venue_address"
      t.string    "venue_city"
      t.string    "venue_state"

      #group info
      t.string    "group_info"
      t.string    "group_url_name"


      t.string   "title"
      t.datetime "start_time"
      t.datetime "end_time"
      t.string   "image_thumbnail"
      t.string   "image_large"
      t.string   "description"
      t.string   "short_description"
      t.string   "city"
      t.string   "short_title"
      t.datetime "created_at",        null: false
      t.datetime "updated_at",        null: false
      t.string   "image_default"
      t.string   "prizepool_total"
      t.string   "prizepool_first"
      t.string   "prizepool_second"
      t.string   "prizepool_third"
      t.string   "link_website"
      t.string   "link_wiki"
      t.string   "link_youtube"
      t.string   "url"
      t.integer  "game_id"
    end
  end
end
