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

ActiveRecord::Schema.define(:version => 20130312021641) do

  create_table "clubs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clubs", ["movie_id"], :name => "index_clubs_on_movie_id"
  add_index "clubs", ["user_id"], :name => "index_clubs_on_user_id"

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.integer  "year"
    t.integer  "released"
    t.string   "genre"
    t.string   "director"
    t.string   "writer"
    t.string   "actors"
    t.string   "plot"
    t.string   "poster"
    t.integer  "imdbRating"
    t.integer  "imdbVotes"
    t.string   "imdbID"
    t.string   "response"
    t.integer  "rank"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "title"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
