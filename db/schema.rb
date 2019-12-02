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


ActiveRecord::Schema.define(version: 2019_12_02_190448) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id"
    t.bigint "skivent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skivent_id"], name: "index_bookings_on_skivent_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end


  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "skivent_id"
    t.index ["skivent_id"], name: "index_favorites_on_skivent_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "rating"
    t.string "review"
    t.bigint "skivent_id"
    t.index ["skivent_id"], name: "index_ratings_on_skivent_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"

  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "resort_type"
    t.string "description"
    t.integer "number_of_slopes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "pictures", array: true
    t.string "url"
    t.integer "price"
  end

  create_table "skivents", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "level"
    t.integer "number_of_place"
    t.boolean "car"
    t.string "description"
    t.bigint "resort_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resort_id"], name: "index_skivents_on_resort_id"
    t.index ["user_id"], name: "index_skivents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "level"
    t.string "picture"
    t.string "description"
    t.string "name"
    t.string "hobbies"
    t.boolean "car"
    t.string "rating"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "skivents"
  add_foreign_key "bookings", "users"

  add_foreign_key "favorites", "skivents"
  add_foreign_key "favorites", "users"

  add_foreign_key "ratings", "skivents"
  add_foreign_key "ratings", "users"

  add_foreign_key "skivents", "resorts"
  add_foreign_key "skivents", "users"
end
