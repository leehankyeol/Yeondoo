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

ActiveRecord::Schema.define(version: 20150115082847) do

  create_table "menu_translations", force: true do |t|
    t.integer  "menu_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "menu_translations", ["locale"], name: "index_menu_translations_on_locale"
  add_index "menu_translations", ["menu_id"], name: "index_menu_translations_on_menu_id"

  create_table "menus", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "subcategory"
    t.string   "tag"
    t.string   "default"
    t.integer  "price"
    t.string   "option"
    t.integer  "option_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "quotes", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "book"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
