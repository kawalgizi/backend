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

ActiveRecord::Schema.define(version: 20161226051438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compositions", force: :cascade do |t|
    t.string   "name"
    t.decimal  "daily_values"
    t.integer  "product_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["product_id"], name: "index_compositions_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "bpom_id"
    t.string   "name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.decimal  "serving_size"
    t.integer  "serving_per_container"
    t.integer  "brand_id"
    t.index ["brand_id"], name: "index_products_on_brand_id", using: :btree
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "username"
    t.text     "tweet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compositions", "products"
  add_foreign_key "products", "brands"
end
