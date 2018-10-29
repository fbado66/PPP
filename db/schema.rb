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

ActiveRecord::Schema.define(version: 2018_10_28_030806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_powers", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "power_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_powers_on_character_id"
    t.index ["power_id"], name: "index_character_powers_on_power_id"
  end

  create_table "character_skills", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_skills_on_character_id"
    t.index ["skill_id"], name: "index_character_skills_on_skill_id"
  end

  create_table "character_videos", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_videos_on_character_id"
    t.index ["video_id"], name: "index_character_videos_on_video_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "rank"
    t.string "equipment"
    t.string "squad"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string "magic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "video_url"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
