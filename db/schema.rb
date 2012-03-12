# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101126013034) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.integer  "strength"
    t.integer  "agility"
    t.integer  "health"
    t.integer  "intelligence"
    t.integer  "intuition"
    t.integer  "charisma"
    t.integer  "perception"
    t.integer  "attack"
    t.integer  "defense"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enemies", :force => true do |t|
    t.string   "name"
    t.integer  "strength"
    t.integer  "agility"
    t.integer  "health"
    t.integer  "intelligence"
    t.integer  "intuition"
    t.integer  "charisma"
    t.integer  "perception"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "level"
    t.integer  "link_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "link_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.integer  "lat"
    t.integer  "long"
    t.integer  "radius"
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "display_name"
    t.text     "description"
    t.string   "directory"
    t.integer  "link_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travels", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                         :null => false
    t.string   "password"
    t.boolean  "admin",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
