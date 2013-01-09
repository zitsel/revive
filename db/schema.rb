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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121210162746) do

  create_table "checks", :force => true do |t|
    t.date     "date"
    t.integer  "check_number"
    t.string   "amount_words"
    t.decimal  "amount_number"
    t.string   "pay_to"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ebay_listings", :force => true do |t|
    t.integer  "item_id"
    t.integer  "ebay_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "duration"
    t.decimal  "start_price"
    t.decimal  "end_price"
    t.string   "status"
    t.integer  "list_count"
    t.string   "listing_type"
  end

  create_table "item_detail_requirements", :force => true do |t|
    t.string   "department_id"
    t.string   "item_detail_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "item_detail_values", :force => true do |t|
    t.integer  "item_id"
    t.integer  "item_detail_id"
    t.string   "value"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "item_details", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "item_id"
    t.integer  "details_needed_id"
    t.string   "value"
    t.integer  "item_details_needed_id"
  end

  create_table "item_measurements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# Could not dump table "items" because of following StandardError
#   Unknown type 'decmial' for column 'cuff_extra'

  create_table "needed_item_details", :force => true do |t|
    t.integer  "department_id"
    t.string   "value"
    t.string   "group"
    t.integer  "order"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "item_id"
    t.string   "filename"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "transactions", :force => true do |t|
    t.date     "date"
    t.string   "approved_amount"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "account"
    t.string   "account_reference_number"
    t.string   "completed_by"
    t.string   "approved_by"
  end

end
