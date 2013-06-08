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

ActiveRecord::Schema.define(:version => 20130608122426) do

  create_table "articles", :force => true do |t|
    t.string   "header"
    t.text     "preview",    :limit => 255
    t.text     "main_text"
    t.string   "img_url"
    t.integer  "tag_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "surname"
    t.string   "patronymic"
    t.datetime "birthday"
    t.string   "gender"
    t.integer  "group_id"
    t.string   "facebook_url"
    t.string   "vk_url"
    t.string   "twitter_url"
    t.string   "google_plus_url"
    t.string   "linked_in_url"
    t.string   "skype_nickname"
    t.string   "github_nickname"
    t.string   "about_me_nickname"
    t.string   "cv_url"
    t.string   "donntu_masters_url"
    t.text     "about_me"
    t.string   "nickname"
    t.boolean  "teacher"
    t.boolean  "praepostor"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "avatar"
    t.string   "department"
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
