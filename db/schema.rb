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

ActiveRecord::Schema.define(:version => 20140207050347) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areas_restaurants", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "restaurant_id"
  end

  add_index "areas_restaurants", ["area_id"], :name => "index_areas_restaurants_on_area_id"
  add_index "areas_restaurants", ["restaurant_id"], :name => "index_areas_restaurants_on_restaurant_id"

  create_table "cuisines", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cuisines_restaurants", :id => false, :force => true do |t|
    t.integer "cuisine_id"
    t.integer "restaurant_id"
  end

  add_index "cuisines_restaurants", ["cuisine_id"], :name => "index_cuisines_restaurants_on_cuisine_id"
  add_index "cuisines_restaurants", ["restaurant_id"], :name => "index_cuisines_restaurants_on_restaurant_id"

  create_table "features", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "features_restaurants", :id => false, :force => true do |t|
    t.integer "feature_id"
    t.integer "restaurant_id"
  end

  add_index "features_restaurants", ["feature_id"], :name => "index_features_restaurants_on_feature_id"
  add_index "features_restaurants", ["restaurant_id"], :name => "index_features_restaurants_on_restaurant_id"

  create_table "prices", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "restaurant_image"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.integer  "area_id"
    t.integer  "cuisine_id"
    t.integer  "feature_id"
    t.integer  "price_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
