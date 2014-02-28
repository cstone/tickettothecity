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

ActiveRecord::Schema.define(:version => 20140228210808) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areas_attractions", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "attraction_id"
  end

  add_index "areas_attractions", ["area_id"], :name => "index_areas_attractions_on_area_id"
  add_index "areas_attractions", ["attraction_id"], :name => "index_areas_attractions_on_attraction_id"

  create_table "areas_deals", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "deal_id"
  end

  add_index "areas_deals", ["area_id"], :name => "index_areas_deals_on_area_id"
  add_index "areas_deals", ["deal_id"], :name => "index_areas_deals_on_deal_id"

  create_table "areas_events", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "event_id"
  end

  add_index "areas_events", ["area_id"], :name => "index_areas_events_on_area_id"
  add_index "areas_events", ["event_id"], :name => "index_areas_events_on_event_id"

  create_table "areas_restaurants", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "restaurant_id"
  end

  add_index "areas_restaurants", ["area_id"], :name => "index_areas_restaurants_on_area_id"
  add_index "areas_restaurants", ["restaurant_id"], :name => "index_areas_restaurants_on_restaurant_id"

  create_table "attractions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "attraction_image"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.integer  "area_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "type_id"
  end

  create_table "attractions_types", :id => false, :force => true do |t|
    t.integer "attraction_id"
    t.integer "type_id"
  end

  add_index "attractions_types", ["attraction_id"], :name => "index_attractions_types_on_attraction_id"
  add_index "attractions_types", ["type_id"], :name => "index_attractions_types_on_type_id"

  create_table "banners", :force => true do |t|
    t.string   "banner_image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "city_guides", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "pdf"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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

  create_table "deals", :force => true do |t|
    t.string   "title"
    t.text     "details"
    t.integer  "area_id"
    t.string   "deal_image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "type_id"
  end

  create_table "deals_types", :id => false, :force => true do |t|
    t.integer "deal_id"
    t.integer "type_id"
  end

  add_index "deals_types", ["deal_id"], :name => "index_deals_types_on_deal_id"
  add_index "deals_types", ["type_id"], :name => "index_deals_types_on_type_id"

  create_table "dynamic_contents", :force => true do |t|
    t.string   "title"
    t.string   "key"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "details"
    t.string   "event_image"
    t.string   "venue"
    t.string   "price"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.integer  "area_id"
    t.integer  "type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.datetime "event_start"
    t.datetime "event_end"
  end

  create_table "events_types", :id => false, :force => true do |t|
    t.integer "type_id"
    t.integer "event_id"
  end

  add_index "events_types", ["event_id"], :name => "index_events_types_on_event_id"
  add_index "events_types", ["type_id"], :name => "index_events_types_on_type_id"

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
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.boolean  "featured_restaurant"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
