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

ActiveRecord::Schema.define(:version => 20120618150354) do

  create_table "groups", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["name"], :name => "index_groups_on_name", :unique => true

  create_table "members", :force => true do |t|
    t.string   "email",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "members", ["email"], :name => "index_members_on_email", :unique => true

  create_table "subscriptions", :force => true do |t|
    t.integer  "group_id",     :null => false
    t.integer  "member_id",    :null => false
    t.text     "introduction", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "subscriptions", ["group_id", "member_id"], :name => "index_subscriptions_on_group_id_and_member_id", :unique => true
  add_index "subscriptions", ["group_id"], :name => "index_subscriptions_on_group_id"
  add_index "subscriptions", ["member_id"], :name => "index_subscriptions_on_member_id"

end
