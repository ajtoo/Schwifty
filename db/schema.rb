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

ActiveRecord::Schema.define(version: 20170324170336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "make",         null: false
    t.string   "model",        null: false
    t.integer  "year",         null: false
    t.integer  "mileage",      null: false
    t.integer  "price",        null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "img_url",      null: false
    t.string   "body",         null: false
    t.string   "drivetrain",   null: false
    t.string   "transmission", null: false
    t.string   "location",     null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "car_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "car_id"], name: "index_favorites_on_user_id_and_car_id", unique: true, using: :btree
  end

  create_table "test_drives", force: :cascade do |t|
    t.date     "date",         null: false
    t.string   "phone_number", null: false
    t.string   "location",     null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id",      null: false
    t.integer  "car_id",       null: false
    t.index ["date", "car_id"], name: "index_test_drives_on_date_and_car_id", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  end

end
