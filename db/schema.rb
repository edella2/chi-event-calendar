# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170102193300) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "status"
    t.string   "waitlist_count"
    t.string   "yes_rsvp_count"
    t.string   "venue_name"
    t.string   "venue_address"
    t.string   "venue_city"
    t.string   "venue_state"
    t.string   "group_info"
    t.string   "group_url_name"
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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
