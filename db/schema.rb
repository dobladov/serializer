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

ActiveRecord::Schema.define(version: 2018_01_27_220843) do

  create_table "cloudinary_images", id: :bigint, default: -> { "unique_rowid()" }, force: :cascade do |t|
    t.text "identifier"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", id: :bigint, default: -> { "unique_rowid()" }, force: :cascade do |t|
    t.text "url"
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "source"
    t.boolean "topped"
    t.text "comment_url"
    t.text "redirect_url"
    t.bigint "tweet_count"
    t.bigint "word_count"
    t.boolean "hn_status"
    t.index ["url"], name: "index_items_on_url", unique: true
  end

  create_table "sessions", id: :bigint, default: -> { "unique_rowid()" }, force: :cascade do |t|
    t.text "identifier"
    t.text "sources"
    t.datetime "completed_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "read_count"
  end

end
