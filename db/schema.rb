# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_21_183203) do

  create_table "characters", force: :cascade do |t|
    t.integer "planet_id", null: false
    t.string "name"
    t.string "avatar"
    t.string "species"
    t.index ["planet_id"], name: "index_characters_on_planet_id"
  end

  create_table "film_characters", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_film_characters_on_character_id"
    t.index ["film_id"], name: "index_film_characters_on_film_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "poster"
    t.date "release_date"
    t.string "director"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "climate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "planet_image"
    t.string "env_image"
    t.string "population"
  end

  add_foreign_key "characters", "planets"
  add_foreign_key "film_characters", "characters"
  add_foreign_key "film_characters", "films"
end
