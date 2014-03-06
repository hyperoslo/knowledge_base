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

ActiveRecord::Schema.define(version: 20140305134249) do

  create_table "knowledge_base_articles", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_articles", ["category_id"], name: "index_knowledge_base_articles_on_category_id"

  create_table "knowledge_base_categories", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "position"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_categories", ["category_id"], name: "index_knowledge_base_categories_on_category_id"
  add_index "knowledge_base_categories", ["slug"], name: "index_knowledge_base_categories_on_slug", unique: true

  create_table "knowledge_base_sections", force: true do |t|
    t.integer  "sectionable_id"
    t.string   "sectionable_type"
    t.integer  "position"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_sections", ["sectionable_id", "sectionable_type"], name: "index_knowledge_base_sections_on_sectionable"

end
