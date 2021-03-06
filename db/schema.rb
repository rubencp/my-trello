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

ActiveRecord::Schema.define(version: 20150702135954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "document_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mlfas", force: :cascade do |t|
    t.text     "description"
    t.text     "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mlfbs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "ssid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "person_type_id"
  end

  add_index "people", ["person_type_id"], name: "index_people_on_person_type_id", using: :btree

  create_table "person_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
  end

  add_index "projects", ["person_id"], name: "index_projects_on_person_id", using: :btree

  create_table "sa_action_items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "status"
    t.text     "remark"
    t.string   "link_ulr"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "person_id"
    t.integer  "sa_action_type_id"
  end

  add_index "sa_action_items", ["sa_action_type_id"], name: "index_sa_action_items_on_sa_action_type_id", using: :btree

  create_table "sa_action_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sa_action_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sa_request_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sa_requests", force: :cascade do |t|
    t.string   "title"
    t.string   "topic"
    t.string   "status"
    t.string   "decision"
    t.string   "applicant"
    t.string   "sa_incharge"
    t.string   "impacted_projects"
    t.string   "sub_projects"
    t.string   "mechanical_interfaces"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "sr_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "people", "person_types"
  add_foreign_key "projects", "people"
  add_foreign_key "sa_action_items", "sa_action_types"
end
