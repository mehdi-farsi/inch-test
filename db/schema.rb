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

ActiveRecord::Schema.define(version: 20160924225221) do

  create_table "buildings", force: :cascade do |t|
    t.string   "reference"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.string   "manager_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "csv_importer_histories", force: :cascade do |t|
    t.string "reference"
    t.string "table"
    t.string "key"
    t.string "value"
  end

  add_index "csv_importer_histories", ["reference", "table"], name: "index_csv_importer_histories_on_reference_and_table"

  create_table "impex_histories", force: :cascade do |t|
    t.string "reference"
    t.string "table"
    t.string "key"
    t.string "value"
  end

  add_index "impex_histories", ["reference", "table"], name: "index_impex_histories_on_reference_and_table"

  create_table "people", force: :cascade do |t|
    t.string   "reference"
    t.string   "email"
    t.string   "home_phone_number"
    t.string   "mobile_phone_number"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
