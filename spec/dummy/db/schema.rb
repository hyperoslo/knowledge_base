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

ActiveRecord::Schema.define(version: 20140318125210) do

  create_table "knowledge_base_articles", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "description"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_categories", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "position",     default: 0
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_categories", ["category_id"], name: "index_knowledge_base_categories_on_category_id"
  add_index "knowledge_base_categories", ["slug"], name: "index_knowledge_base_categories_on_slug", unique: true

  create_table "knowledge_base_category_article_associations", force: true do |t|
    t.integer  "category_id"
    t.integer  "article_id"
    t.integer  "position",    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_category_article_associations", ["article_id"], name: "index_knowledge_base_c_a_association_on_article_id"
  add_index "knowledge_base_category_article_associations", ["category_id"], name: "index_knowledge_base_c_a_association_on_category_id"

  create_table "knowledge_base_sectionables_galleries", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sectionables_gallery_images", force: true do |t|
    t.string   "caption"
    t.string   "image"
    t.integer  "position",   default: 0
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_sectionables_gallery_images", ["gallery_id"], name: "index_knowledge_base_sectionables_gallery_images_on_gallery_id"

  create_table "knowledge_base_sectionables_images", force: true do |t|
    t.text     "caption"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sectionables_links", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sectionables_links_links", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "position",   default: 0
    t.integer  "links_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sectionables_list_items", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "position",   default: 0
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "knowledge_base_sectionables_list_items", ["list_id"], name: "index_knowledge_base_sectionables_list_items_on_list_id"

  create_table "knowledge_base_sectionables_lists", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sectionables_texts", force: true do |t|
    t.string   "heading"
    t.text     "lead"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sectionables_videos", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledge_base_sections", force: true do |t|
    t.integer  "sectionable_id"
    t.string   "sectionable_type"
    t.integer  "position",         default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "container_id"
    t.string   "container_type"
  end

  add_index "knowledge_base_sections", ["container_id", "container_type"], name: "index_knowledge_base_sections_on_container"
  add_index "knowledge_base_sections", ["sectionable_id", "sectionable_type"], name: "index_knowledge_base_sections_on_sectionable"

end
