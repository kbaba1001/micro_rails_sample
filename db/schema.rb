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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160727230321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums_songs", force: :cascade do |t|
    t.integer "album_id"
    t.integer "song_id"
    t.index ["album_id"], name: "index_albums_songs_on_album_id", using: :btree
    t.index ["song_id"], name: "index_albums_songs_on_song_id", using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "play_lists", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_play_lists_on_user_id", using: :btree
  end

  create_table "play_lists_songs", force: :cascade do |t|
    t.integer "play_list_id"
    t.integer "song_id"
    t.index ["play_list_id"], name: "index_play_lists_songs_on_play_list_id", using: :btree
    t.index ["song_id"], name: "index_play_lists_songs_on_song_id", using: :btree
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "albums_songs", "albums"
  add_foreign_key "albums_songs", "songs"
  add_foreign_key "play_lists", "users"
  add_foreign_key "play_lists_songs", "play_lists"
  add_foreign_key "play_lists_songs", "songs"
  add_foreign_key "songs", "artists"
end
