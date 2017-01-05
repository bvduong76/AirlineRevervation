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

ActiveRecord::Schema.define(version: 20170105143629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.string "name"
  end

  create_table "airstrips", force: :cascade do |t|
    t.integer "start"
    t.integer "end"
    t.index ["start", "end"], name: "index_airstrips_on_start_and_end", unique: true, using: :btree
  end

  create_table "airways", force: :cascade do |t|
    t.string  "code"
    t.integer "start"
    t.integer "end"
    t.date    "day"
    t.time    "time"
    t.index ["start", "end", "day", "time"], name: "index_airways_on_start_and_end_and_day_and_time", unique: true, using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "code"
    t.datetime "time"
    t.float    "price"
    t.boolean  "status"
  end

  create_table "flightdetails", force: :cascade do |t|
    t.integer "booking"
    t.integer "flight"
    t.index ["booking", "flight"], name: "index_flightdetails_on_booking_and_flight", unique: true, using: :btree
  end

  create_table "flights", force: :cascade do |t|
    t.integer "way"
    t.string  "grade"
    t.integer "pricelevel"
    t.integer "slot"
    t.index ["way", "pricelevel"], name: "index_flights_on_way_and_pricelevel", unique: true, using: :btree
  end

  create_table "passengers", force: :cascade do |t|
    t.string  "title"
    t.string  "firstname"
    t.string  "lastname"
    t.integer "booking"
  end

  create_table "pricelevels", force: :cascade do |t|
    t.string "name"
    t.float  "price"
  end

  add_foreign_key "airstrips", "airports", column: "end"
  add_foreign_key "airstrips", "airports", column: "start"
  add_foreign_key "airways", "airports", column: "end"
  add_foreign_key "airways", "airports", column: "start"
  add_foreign_key "flightdetails", "bookings", column: "booking"
  add_foreign_key "flightdetails", "flights", column: "flight"
  add_foreign_key "flights", "airways", column: "way"
  add_foreign_key "flights", "pricelevels", column: "pricelevel"
  add_foreign_key "passengers", "bookings", column: "booking"
end
