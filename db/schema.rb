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

ActiveRecord::Schema.define(version: 20131008022655) do

  create_table "active_admin_comments", force: true do |t|
    t.integer  "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id", using: :btree

  create_table "admins", force: true do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",   limit: 128, default: "", null: false
    t.string   "password_salt",                    default: "", null: false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "checkins", force: true do |t|
    t.datetime "fromdate"
    t.datetime "todate"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.text     "description"
    t.integer  "bill_to_owner_id"
    t.string   "bill_to_owner_type"
  end

  create_table "checkins_guests", id: false, force: true do |t|
    t.integer "checkin_id"
    t.integer "guest_id"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "inchargeperson"
    t.text     "address"
    t.string   "email"
    t.string   "phone"
    t.integer  "creditlimit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "example_scaffolds", force: true do |t|
    t.string   "title"
    t.datetime "dateline"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.integer  "age"
    t.string   "sex"
    t.string   "photo"
    t.text     "address"
    t.integer  "mobile"
    t.string   "email"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "room_id"
    t.integer  "extraperson"
    t.decimal  "tax",         precision: 10, scale: 2
    t.datetime "fromdate"
    t.datetime "todate"
    t.integer  "rate"
    t.integer  "checkin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "freez"
  end

  create_table "payments", force: true do |t|
    t.integer  "amount"
    t.integer  "checkin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "pubdate",    default: '1955-07-17 16:43:00'
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slogan"
    t.string   "category"
    t.text     "summary_image_url"
    t.datetime "pubdate"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_types", force: true do |t|
    t.string   "name"
    t.text     "facilities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "baserate"
  end

  create_table "rooms", force: true do |t|
    t.string   "number"
    t.integer  "room_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "service_items", force: true do |t|
    t.integer  "service_id"
    t.integer  "amount"
    t.integer  "billnumber"
    t.text     "description"
    t.integer  "checkin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id"
    t.datetime "date"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",   limit: 128, default: "", null: false
    t.string   "password_salt",                    default: "", null: false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
