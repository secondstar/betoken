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

ActiveRecord::Schema.define(version: 20131013043029) do

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "email"
    t.string   "contact_title"
    t.string   "phone"
    t.text     "url"
    t.string   "project_start_date"
    t.string   "project_estimated_budget"
    t.string   "project_stage"
    t.string   "aspects"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "image_url"
    t.datetime "pubdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tags"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "logo_url"
    t.text     "image_url"
    t.text     "challenge"
    t.text     "result"
    t.text     "quote"
    t.string   "quotable_person"
    t.string   "quotable_positon_and_company"
    t.string   "one_line_project_description"
    t.datetime "pubdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slogan"
    t.string   "category"
    t.text     "summary_image_url"
  end

end
