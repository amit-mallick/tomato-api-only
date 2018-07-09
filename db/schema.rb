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

ActiveRecord::Schema.define(:version => 20180705173408) do

  create_table "ratings", :force => true do |t|
    t.string   "commenter"
    t.integer  "rating"
    t.text     "body"
    t.integer  "resturant_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "ratings", ["resturant_id"], :name => "index_ratings_on_resturant_id"

  create_table "resturants", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "price"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "resturants", ["location"], :name => "index_resturants_on_location"

end
