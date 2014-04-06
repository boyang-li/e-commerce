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

ActiveRecord::Schema.define(version: 20140406042911) do

  create_table "attribute_descriptions", force: true do |t|
    t.integer "attribute_id"
    t.integer "language_id"
    t.string  "name",         limit: 64, null: false
  end

  add_index "attribute_descriptions", ["attribute_id"], name: "index_attribute_descriptions_on_attribute_id", using: :btree

  create_table "attribute_group_descriptions", force: true do |t|
    t.integer "attribute_group_id"
    t.integer "language_id"
    t.string  "name",               limit: 64, null: false
  end

  add_index "attribute_group_descriptions", ["attribute_group_id"], name: "index_attribute_group_descriptions_on_attribute_group_id", using: :btree

  create_table "attribute_groups", force: true do |t|
    t.integer "sort_order", limit: 3
  end

  create_table "attributes", force: true do |t|
    t.integer "attribute_group_id"
    t.integer "sort_order",         limit: 3
  end

  add_index "attributes", ["attribute_group_id"], name: "index_attributes_on_attribute_group_id", using: :btree

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

  create_table "categories_products", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  add_index "categories_products", ["category_id"], name: "index_categories_products_on_category_id", using: :btree
  add_index "categories_products", ["product_id"], name: "index_categories_products_on_product_id", using: :btree

  create_table "customer_groups", force: true do |t|
  end

  create_table "customers", force: true do |t|
  end

  create_table "length_class_descriptions", force: true do |t|
    t.integer "length_class_id"
    t.integer "language_id"
    t.string  "title",           limit: 32, null: false
    t.string  "unit",            limit: 4,  null: false
  end

  add_index "length_class_descriptions", ["length_class_id"], name: "index_length_class_descriptions_on_length_class_id", using: :btree

  create_table "length_classes", force: true do |t|
    t.decimal "value", precision: 15, scale: 8
  end

  create_table "manufacturers", force: true do |t|
    t.string  "name",       limit: 64, null: false
    t.string  "image",                 null: false
    t.integer "sort_order", limit: 3
  end

  create_table "option_descriptions", force: true do |t|
    t.integer "option_id"
    t.integer "language_id"
    t.string  "name",        limit: 128, null: false
  end

  add_index "option_descriptions", ["option_id"], name: "index_option_descriptions_on_option_id", using: :btree

  create_table "option_value_descriptions", force: true do |t|
    t.integer "option_value_id"
    t.integer "language_id"
    t.string  "name",            limit: 64, null: false
  end

  add_index "option_value_descriptions", ["option_value_id"], name: "index_option_value_descriptions_on_option_value_id", using: :btree

  create_table "option_values", force: true do |t|
    t.integer "option_id"
    t.string  "image",                null: false
    t.integer "sort_order", limit: 3
  end

  add_index "option_values", ["option_id"], name: "index_option_values_on_option_id", using: :btree

  create_table "options", force: true do |t|
    t.string  "type",       limit: 32
    t.integer "sort_order", limit: 3
  end

  create_table "product_attributes", force: true do |t|
    t.integer "product_id"
    t.integer "attribute_id"
    t.integer "language_id"
    t.text    "text",         null: false
  end

  add_index "product_attributes", ["attribute_id"], name: "index_product_attributes_on_attribute_id", using: :btree
  add_index "product_attributes", ["product_id"], name: "index_product_attributes_on_product_id", using: :btree

  create_table "product_descriptions", force: true do |t|
    t.integer "product_id"
    t.integer "language_id"
    t.string  "name",             null: false
    t.text    "description",      null: false
    t.string  "meta_description", null: false
    t.string  "meta_keyword",     null: false
    t.text    "tag",              null: false
  end

  add_index "product_descriptions", ["product_id"], name: "index_product_descriptions_on_product_id", using: :btree

  create_table "product_discounts", force: true do |t|
    t.integer  "product_id"
    t.integer  "customer_group_id"
    t.integer  "quantity"
    t.integer  "priority",          limit: 8
    t.decimal  "price",                       precision: 15, scale: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_discounts", ["customer_group_id"], name: "index_product_discounts_on_customer_group_id", using: :btree
  add_index "product_discounts", ["product_id"], name: "index_product_discounts_on_product_id", using: :btree

  create_table "product_images", force: true do |t|
    t.integer "product_id"
    t.string  "image",                null: false
    t.integer "sort_order", limit: 3
  end

  add_index "product_images", ["product_id"], name: "index_product_images_on_product_id", using: :btree

  create_table "product_option_values", force: true do |t|
    t.integer "product_option_id"
    t.integer "product_id"
    t.integer "option_id"
    t.integer "option_value_id"
    t.integer "quantity",          limit: 3
    t.integer "subtract",          limit: 1
    t.decimal "price",                       precision: 15, scale: 4
    t.string  "price_prefix",      limit: 1,                          null: false
    t.integer "points",            limit: 8
    t.string  "points_prefix",     limit: 1,                          null: false
    t.decimal "weight",                      precision: 15, scale: 8
    t.string  "weight_prefix",     limit: 1,                          null: false
  end

  add_index "product_option_values", ["option_id"], name: "index_product_option_values_on_option_id", using: :btree
  add_index "product_option_values", ["option_value_id"], name: "index_product_option_values_on_option_value_id", using: :btree
  add_index "product_option_values", ["product_id"], name: "index_product_option_values_on_product_id", using: :btree
  add_index "product_option_values", ["product_option_id"], name: "index_product_option_values_on_product_option_id", using: :btree

  create_table "product_options", force: true do |t|
    t.integer "product_id"
    t.integer "option_id"
    t.text    "option_value",           null: false
    t.integer "required",     limit: 1
  end

  add_index "product_options", ["option_id"], name: "index_product_options_on_option_id", using: :btree
  add_index "product_options", ["product_id"], name: "index_product_options_on_product_id", using: :btree

  create_table "product_rewards", force: true do |t|
    t.integer "product_id"
    t.integer "customer_group_id"
    t.integer "points",            limit: 8
  end

  add_index "product_rewards", ["customer_group_id"], name: "index_product_rewards_on_customer_group_id", using: :btree
  add_index "product_rewards", ["product_id"], name: "index_product_rewards_on_product_id", using: :btree

  create_table "product_specials", force: true do |t|
    t.integer  "product_id"
    t.integer  "customer_group_id"
    t.integer  "priority",          limit: 8
    t.decimal  "price",                       precision: 15, scale: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_specials", ["customer_group_id"], name: "index_product_specials_on_customer_group_id", using: :btree
  add_index "product_specials", ["product_id"], name: "index_product_specials_on_product_id", using: :btree

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

  create_table "reviews", force: true do |t|
    t.integer  "product_id"
    t.integer  "customer_id"
    t.string   "author",      limit: 64, null: false
    t.text     "text",                   null: false
    t.integer  "rating",      limit: 1
    t.integer  "status",      limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["customer_id"], name: "index_reviews_on_customer_id", using: :btree
  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id", using: :btree

  create_table "stock_statuses", force: true do |t|
    t.integer "language_id"
    t.string  "name",        limit: 32, null: false
  end

  create_table "tax_classes", force: true do |t|
    t.string   "title",       limit: 32, null: false
    t.string   "description",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tax_rates", force: true do |t|
    t.string   "name",       limit: 32,                          null: false
    t.decimal  "rate",                  precision: 15, scale: 4
    t.string   "type",       limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tax_rules", force: true do |t|
    t.integer "tax_class_id"
    t.integer "tax_rate_id"
    t.string  "based",        limit: 10
    t.integer "priority",     limit: 8
  end

  add_index "tax_rules", ["tax_class_id"], name: "index_tax_rules_on_tax_class_id", using: :btree
  add_index "tax_rules", ["tax_rate_id"], name: "index_tax_rules_on_tax_rate_id", using: :btree

  create_table "weight_class_descriptions", force: true do |t|
    t.integer "weight_class_id"
    t.integer "language_id"
    t.string  "title",           limit: 32, null: false
    t.string  "unit",            limit: 4,  null: false
  end

  add_index "weight_class_descriptions", ["weight_class_id"], name: "index_weight_class_descriptions_on_weight_class_id", using: :btree

  create_table "weight_classes", force: true do |t|
    t.decimal "value", precision: 15, scale: 8
  end

end
