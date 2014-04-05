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

ActiveRecord::Schema.define(version: 20140405172833) do

  create_table "categories", force: true do |t|
    t.string   "image",                null: false
    t.integer  "parent_id"
    t.integer  "top",        limit: 1
    t.integer  "column",     limit: 3
    t.integer  "sort_order", limit: 3
    t.integer  "status",     limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorization", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  add_index "categorization", ["category_id"], name: "index_categorization_on_category_id", using: :btree
  add_index "categorization", ["product_id"], name: "index_categorization_on_product_id", using: :btree

  create_table "category_descriptions", id: false, force: true do |t|
    t.integer "category_id"
    t.string  "name",             null: false
    t.text    "description",      null: false
    t.string  "meta_description", null: false
    t.string  "meta_keyword",     null: false
  end

  add_index "category_descriptions", ["category_id"], name: "index_category_descriptions_on_category_id", using: :btree

  create_table "manufacturers", force: true do |t|
    t.string  "name",       limit: 64, null: false
    t.string  "image",                 null: false
    t.integer "sort_order", limit: 3
  end

  create_table "products", force: true do |t|
    t.string   "model",           limit: 64,                                       null: false
    t.string   "sku",             limit: 64,                                       null: false
    t.string   "mpn",             limit: 64,                                       null: false
    t.string   "upc",             limit: 12,                                       null: false
    t.string   "ean",             limit: 14,                                       null: false
    t.string   "jan",             limit: 13,                                       null: false
    t.string   "isbn",            limit: 13,                                       null: false
    t.string   "location",        limit: 128,                                      null: false
    t.integer  "quantity",                                             default: 1, null: false
    t.string   "image",                                                            null: false
    t.integer  "shipping",        limit: 1,                            default: 1, null: false
    t.decimal  "price",                       precision: 15, scale: 4,             null: false
    t.integer  "points",          limit: 8,                            default: 0, null: false
    t.date     "date_available",                                                   null: false
    t.decimal  "weight",                      precision: 15, scale: 8
    t.decimal  "length",                      precision: 15, scale: 8
    t.decimal  "width",                       precision: 15, scale: 8
    t.integer  "subtract",        limit: 1
    t.integer  "minimum",                                              default: 1, null: false
    t.integer  "sort_order"
    t.integer  "status",          limit: 1,                            default: 1, null: false
    t.integer  "viewed",          limit: 8,                            default: 0, null: false
    t.integer  "stock_status_id"
    t.integer  "manufacturer_id"
    t.integer  "tax_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["manufacturer_id"], name: "index_products_on_manufacturer_id", using: :btree
  add_index "products", ["stock_status_id"], name: "index_products_on_stock_status_id", using: :btree
  add_index "products", ["tax_class_id"], name: "index_products_on_tax_class_id", using: :btree

  create_table "stock_statuses", force: true do |t|
    t.string "name", limit: 32, null: false
  end

  create_table "tax_classes", force: true do |t|
    t.string   "title",       limit: 32, null: false
    t.string   "description",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
