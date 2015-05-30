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

ActiveRecord::Schema.define(version: 20150527021453) do

  create_table "agencies", force: :cascade do |t|
    t.string   "name"
    t.string   "contactnum"
    t.integer  "prioritynum"
    t.string   "reponsibilities"
    t.string   "head"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "barangays", force: :cascade do |t|
    t.string   "name"
    t.string   "main_livelihood"
    t.decimal  "area"
    t.string   "rescue_resources"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "people_id"
    t.integer  "municipality_id"
    t.integer  "hazard_id"
    t.integer  "population"
    t.decimal  "livestock"
    t.decimal  "agri"
    t.decimal  "commercial"
    t.decimal  "infra"
  end

  create_table "disasters", force: :cascade do |t|
    t.integer  "hazard_id"
    t.datetime "date"
    t.string   "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hazards", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hits", force: :cascade do |t|
    t.integer  "zone_id"
    t.integer  "disaster_id"
    t.string   "effect1"
    t.string   "effect2"
    t.string   "effect3"
    t.string   "dlifeline1"
    t.string   "dlifeline2"
    t.string   "dlifeline3"
    t.decimal  "livestock"
    t.decimal  "agri"
    t.decimal  "commerce"
    t.decimal  "infra"
    t.integer  "dead"
    t.integer  "missing"
    t.integer  "injured"
    t.integer  "displaced"
    t.integer  "relocated"
    t.integer  "good"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "households", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "zone_id"
    t.integer  "people_id"
    t.integer  "count"
    t.string   "condition"
  end

  create_table "impacts", force: :cascade do |t|
    t.integer  "zone_count"
    t.integer  "dead"
    t.integer  "missing"
    t.integer  "injured"
    t.integer  "displaced"
    t.integer  "relocated"
    t.integer  "good"
    t.integer  "ptotal"
    t.decimal  "livestock"
    t.decimal  "agri"
    t.decimal  "infra"
    t.decimal  "commerce"
    t.decimal  "ctotal"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "disaster_id"
    t.integer  "household_count"
    t.decimal  "atotal"
  end

  create_table "municipalities", force: :cascade do |t|
    t.string   "name"
    t.decimal  "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "people_id"
    t.integer  "population"
    t.decimal  "livestock"
    t.decimal  "agri"
    t.decimal  "commercial"
    t.decimal  "infra"
  end

  create_table "needs", force: :cascade do |t|
    t.integer  "priority"
    t.integer  "code"
    t.string   "description"
    t.integer  "agency_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "passcodes", force: :cascade do |t|
    t.integer  "municipal_id"
    t.integer  "barangay_id"
    t.string   "pass"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "household_id"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "familyname"
    t.datetime "birthdate"
    t.string   "civilstatus"
    t.string   "occupation"
    t.string   "contactnum"
    t.string   "disabilityinfo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "gender"
    t.string   "email"
    t.string   "condition"
    t.integer  "age"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.boolean  "passable"
    t.integer  "weight"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "temp"
  end

  create_table "senders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "zones", force: :cascade do |t|
    t.integer  "barangay_id"
    t.decimal  "area"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.integer  "population"
    t.decimal  "livestock"
    t.decimal  "agri"
    t.decimal  "commercial"
    t.decimal  "infra"
  end

end
