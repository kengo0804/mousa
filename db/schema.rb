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

ActiveRecord::Schema.define(version: 20180625150136) do

  create_table "affiliations", force: :cascade do |t|
    t.string "affiliation_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.integer "instrument_id"
    t.string "instrument_name"
    t.text "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "introduction"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "user_id"
    t.integer "order_datetime"
    t.string "course"
    t.string "delivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "receveid"
    t.string "budget"
    t.string "reply_deadline"
  end

  create_table "receptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_receptions_on_order_id"
    t.index ["user_id"], name: "index_receptions_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "following_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.text "live_image"
    t.string "live_title"
    t.string "live_date"
    t.string "live_location"
    t.integer "live_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer "song_id"
    t.string "song_titile"
    t.text "song_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_genres", force: :cascade do |t|
    t.integer "user_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_instruments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "instrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_kana"
    t.string "last_kana"
    t.string "postal_code"
    t.string "address"
    t.string "tell", null: false
    t.string "delete_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "leave_flag"
    t.text "user_image_id"
    t.string "title"
    t.string "body"
    t.integer "genre_id", default: 1
    t.integer "affiliation_id", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
