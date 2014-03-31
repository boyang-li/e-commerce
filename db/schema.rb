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

ActiveRecord::Schema.define(version: 20140327194225) do

  create_table "products", force: true do |t|
    t.string   "title",            limit: 300,                                         null: false
    t.string   "description",      limit: 800,                                         null: false
    t.integer  "vender_id",                                                            null: false
    t.boolean  "active",                                                default: true, null: false
    t.integer  "min",                                                                  null: false
    t.integer  "max",                                                                  null: false
    t.datetime "start_time",                                                           null: false
    t.datetime "end_time",                                                             null: false
    t.datetime "expire_on"
    t.decimal  "regular_price",                precision: 10, scale: 2,                null: false
    t.decimal  "actual_price",                 precision: 10, scale: 2,                null: false
    t.decimal  "product_fee",                  precision: 10, scale: 2,                null: false
    t.string   "currency",         limit: 2,                            default: "CA", null: false
    t.string   "image_url",        limit: 100,                                         null: false
    t.boolean  "require_shipping",                                      default: true, null: false
    t.string   "editor",           limit: 50,                                          null: false
    t.string   "payment_gateway",  limit: 20,                           default: "Some Gateway"
    t.integer  "categories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
