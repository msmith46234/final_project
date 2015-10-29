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

ActiveRecord::Schema.define(version: 20151028212621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string  "name"
    t.string  "phone_number"
    t.integer "reservation_number"
  end

  create_table "room_assignments", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_number"
    t.string "nest_device"
    t.string "number_of_beds"
  end

  create_table "temp_requests", force: :cascade do |t|
    t.integer "room_assignment_id"
    t.integer "temperature"
  end

end