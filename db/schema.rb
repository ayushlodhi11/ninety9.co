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

ActiveRecord::Schema.define(version: 20151204104312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.decimal  "price"
    t.string   "postal_code"
    t.string   "listing_type"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "listings", ["id"], name: "index_listings_on_id", using: :btree
  add_index "listings", ["postal_code", "listing_type", "status"], name: "index_listings_on_postal_code_and_listing_type_and_status", using: :btree
  add_index "listings", ["postal_code", "status", "listing_type"], name: "index_listings_on_postal_code_and_status_and_listing_type", using: :btree
  add_index "listings", ["postal_code", "status"], name: "index_listings_on_postal_code_and_status", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["id"], name: "index_users_on_id", using: :btree

end
