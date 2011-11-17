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

ActiveRecord::Schema.define(:version => 20111115160547) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "communities", :force => true do |t|
    t.string   "communityname"
    t.float    "x"
    t.float    "y"
    t.string   "town"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
  end

  add_index "communities", ["communityname"], :name => "index_communities_on_communityname"
  add_index "communities", ["district", "town"], :name => "index_communities_on_district_and_town"
  add_index "communities", ["town"], :name => "index_communities_on_town"
  add_index "communities", ["x", "y"], :name => "index_communities_on_x_and_y"
  add_index "communities", ["y"], :name => "index_communities_on_y"

  create_table "decorations", :force => true do |t|
    t.integer  "awardedflag"
    t.integer  "user_id"
    t.integer  "decorationtype_id"
    t.datetime "awardedtime"
    t.datetime "awardtime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "decorations", ["awardedflag"], :name => "index_decorations_on_awardedflag"
  add_index "decorations", ["awardedtime"], :name => "index_decorations_on_awardedtime"
  add_index "decorations", ["decorationtype_id"], :name => "index_decorations_on_decorationtype_id"
  add_index "decorations", ["user_id"], :name => "index_decorations_on_user_id"

  create_table "decorationtypes", :force => true do |t|
    t.string   "decorationtypename"
    t.string   "awardedrank"
    t.string   "decorationlink",     :limit => 1024
    t.string   "description"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "decorationtypes", ["awardedrank"], :name => "index_decorationtypes_on_awardedrank"

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.integer  "readcount"
    t.integer  "commentcount"
    t.string   "body"
    t.integer  "author_id"
    t.integer  "authortype"
    t.integer  "msgtype"
    t.integer  "publicflag"
    t.integer  "community_id"
    t.integer  "notice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notices", ["author_id"], :name => "index_notices_on_author_id"
  add_index "notices", ["authortype"], :name => "index_notices_on_authortype"
  add_index "notices", ["commentcount"], :name => "index_notices_on_commentcount"
  add_index "notices", ["community_id"], :name => "index_notices_on_community_id"
  add_index "notices", ["msgtype"], :name => "index_notices_on_msgtype"
  add_index "notices", ["notice_id"], :name => "index_notices_on_notice_id"
  add_index "notices", ["publicflag"], :name => "index_notices_on_publicflag"
  add_index "notices", ["readcount"], :name => "index_notices_on_readcount"

  create_table "point_checkin_ships", :force => true do |t|
    t.integer  "user_id"
    t.string   "point_id"
    t.integer  "cat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "point_checkin_ships", ["cat"], :name => "index_point_checkin_ships_on_cat"
  add_index "point_checkin_ships", ["point_id"], :name => "index_point_checkin_ships_on_point_id"
  add_index "point_checkin_ships", ["user_id"], :name => "index_point_checkin_ships_on_user_id"

  create_table "point_fav_ships", :force => true do |t|
    t.integer  "user_id"
    t.string   "point_id"
    t.integer  "cat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "point_fav_ships", ["cat"], :name => "index_point_fav_ships_on_cat"
  add_index "point_fav_ships", ["point_id"], :name => "index_point_fav_ships_on_point_id"
  add_index "point_fav_ships", ["user_id"], :name => "index_point_fav_ships_on_user_id"

  create_table "point_rate_ships", :force => true do |t|
    t.integer  "user_id"
    t.string   "point_id"
    t.integer  "cat"
    t.float    "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "point_rate_ships", ["cat"], :name => "index_point_rate_ships_on_cat"
  add_index "point_rate_ships", ["point_id"], :name => "index_point_rate_ships_on_point_id"
  add_index "point_rate_ships", ["score"], :name => "index_point_rate_ships_on_score"
  add_index "point_rate_ships", ["user_id"], :name => "index_point_rate_ships_on_user_id"

  create_table "points", :force => true do |t|
    t.string   "point_id"
    t.integer  "cat"
    t.float    "rate"
    t.integer  "ratecounts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "points", ["cat"], :name => "index_points_on_cat"
  add_index "points", ["point_id"], :name => "index_points_on_point_id"
  add_index "points", ["rate"], :name => "index_points_on_rate"
  add_index "points", ["ratecounts"], :name => "index_points_on_ratecounts"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "nick"
    t.string   "password"
    t.string   "address",       :limit => 1024
    t.integer  "age"
    t.string   "gender"
    t.integer  "community_id"
    t.string   "imsi"
    t.string   "imei"
    t.string   "clienttype"
    t.string   "devicemodel"
    t.string   "scrrensize"
    t.string   "rank"
    t.integer  "answers_count"
    t.string   "portraitlink",  :limit => 1024
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["answers_count"], :name => "index_users_on_answers_count"
  add_index "users", ["community_id"], :name => "index_users_on_community_id"
  add_index "users", ["imsi"], :name => "index_users_on_imsi"
  add_index "users", ["login"], :name => "index_users_on_login"

end
