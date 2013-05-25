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

ActiveRecord::Schema.define(:version => 20130519095814) do

  create_table "articles", :force => true do |t|
    t.string   "header"
    t.string   "preview"
    t.text     "main_text"
    t.string   "img_url"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "course"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedule_types", :force => true do |t|
    t.string "name"
  end

  create_table "schedules", :force => true do |t|
    t.string   "mon_1"
    t.string   "mon_2"
    t.string   "mon_3"
    t.string   "mon_4"
    t.string   "mon_5"
    t.string   "tue_1"
    t.string   "tue_2"
    t.string   "tue_3"
    t.string   "tue_4"
    t.string   "tue_5"
    t.string   "wed_1"
    t.string   "wed_2"
    t.string   "wed_3"
    t.string   "wed_4"
    t.string   "wed_5"
    t.string   "thu_1"
    t.string   "thu_2"
    t.string   "thu_3"
    t.string   "thu_4"
    t.string   "thu_5"
    t.string   "fri_1"
    t.string   "fri_2"
    t.string   "fri_3"
    t.string   "fri_4"
    t.string   "fri_5"
    t.integer  "group_id"
    t.integer  "schedule_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.string   "tag"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
