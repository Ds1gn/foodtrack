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

ActiveRecord::Schema.define(version: 20150518204422) do

  create_table "custom_notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "food_id"
    t.integer  "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "custom_notifications", ["food_id"], name: "index_custom_notifications_on_food_id"
  add_index "custom_notifications", ["user_id"], name: "index_custom_notifications_on_user_id"

  create_table "food_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "food_categories", ["slug"], name: "index_food_categories_on_slug", unique: true

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "days_to_expiration"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "food_category_id"
  end

  add_index "foods", ["food_category_id"], name: "index_foods_on_food_category_id"

  create_table "purchases", force: :cascade do |t|
    t.string   "date_of_purchase"
    t.string   "user_id"
    t.string   "expiration_date"
    t.string   "reminder_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "phone"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
