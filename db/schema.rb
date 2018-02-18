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

ActiveRecord::Schema.define(version: 20180216222728) do

  create_table "onelists", force: :cascade do |t|
    t.string "text"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_onelists_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "price_low"
    t.string "price_normal"
    t.string "price_high"
    t.string "content1"
    t.string "content2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "path1"
    t.string "path2"
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.string "photo5"
    t.string "foot_note"
  end

  create_table "secondlists", force: :cascade do |t|
    t.string "text"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_secondlists_on_room_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.string "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
