# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151102203900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_tags", force: :cascade do |t|
    t.integer "event_id"
    t.integer "tag_id"
  end

  create_table "events", force: :cascade do |t|
    t.string  "title"
    t.date    "day"
    t.time    "start_time"
    t.time    "end_time"
    t.integer "host_id"
    t.string  "description"
    t.string  "location"
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer "event_id"
    t.integer "guest_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "location"
    t.string "img_url"
  end

end
