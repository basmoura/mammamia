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

ActiveRecord::Schema.define(version: 20131028221254) do

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_pizzas", id: false, force: true do |t|
    t.integer "ingredient_id"
    t.integer "pizza_id"
  end

  create_table "pizzas", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.integer  "kcal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "restaurant_id"
  end

  add_index "pizzas", ["restaurant_id"], name: "index_pizzas_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.date     "founded_at"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "capacity"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
