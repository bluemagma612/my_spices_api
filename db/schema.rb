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

ActiveRecord::Schema.define(version: 20160519195346) do

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.string   "img_path"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cuisines_dishes", id: false, force: :cascade do |t|
    t.integer "cuisine_id"
    t.integer "dish_id"
  end

  add_index "cuisines_dishes", ["cuisine_id", "dish_id"], name: "index_cuisines_dishes_on_cuisine_id_and_dish_id"

  create_table "cuisines_spices", id: false, force: :cascade do |t|
    t.integer "cuisine_id"
    t.integer "spice_id"
  end

  add_index "cuisines_spices", ["cuisine_id", "spice_id"], name: "index_cuisines_spices_on_cuisine_id_and_spice_id"

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes_spices", id: false, force: :cascade do |t|
    t.integer "dish_id"
    t.integer "spice_id"
  end

  add_index "dishes_spices", ["dish_id", "spice_id"], name: "index_dishes_spices_on_dish_id_and_spice_id"

  create_table "spices", force: :cascade do |t|
    t.string   "name"
    t.string   "img_path"
    t.text     "description"
    t.boolean  "favorite"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
