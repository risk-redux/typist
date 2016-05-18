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

ActiveRecord::Schema.define(version: 20160411174411) do

  create_table "impact_levels", force: :cascade do |t|
    t.integer  "impact_level", limit: 4
    t.string   "name",         limit: 255
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "information_classes", force: :cascade do |t|
    t.string   "class_code",  limit: 255
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "information_groups", force: :cascade do |t|
    t.integer  "information_class_id", limit: 4
    t.string   "group_code",           limit: 255
    t.string   "name",                 limit: 255
    t.text     "description",          limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "information_types", force: :cascade do |t|
    t.string   "type_code",                          limit: 255
    t.string   "name",                               limit: 255
    t.integer  "confidentiality_impact_level",       limit: 4
    t.integer  "integrity_impact_level",             limit: 4
    t.integer  "availability_impact_level",          limit: 4
    t.text     "confidentiality_impact_description", limit: 65535
    t.text     "integrity_impact_description",       limit: 65535
    t.text     "availability_impact_description",    limit: 65535
    t.integer  "information_group_id",               limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.text     "description",                        limit: 65535
  end

  create_table "security_objectives", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
