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

ActiveRecord::Schema.define(version: 2019_11_15_141037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "reciever_id"
    t.string "chat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_apps", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_chat_reps", force: :cascade do |t|
    t.integer "event_chat_id"
    t.integer "rep_user_id"
    t.string "chat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_chats", force: :cascade do |t|
    t.integer "event_id"
    t.integer "sender_id"
    t.string "chat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer "event_id"
    t.integer "event_app_id"
    t.integer "store_owner_id"
    t.string "store_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nick_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_path"
  end

end