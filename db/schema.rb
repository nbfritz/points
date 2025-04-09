# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_09_000009) do
  create_table "definitions", force: :cascade do |t|
    t.string "name"
    t.integer "initial_value"
    t.integer "small_increment"
    t.integer "large_increment"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_definitions_on_game_id"
  end

  create_table "entries", force: :cascade do |t|
    t.integer "delta"
    t.integer "statistic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["statistic_id"], name: "index_entries_on_statistic_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer "player_id"
    t.integer "session_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_seats_on_player_id"
    t.index ["session_id"], name: "index_seats_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "name"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_sessions_on_game_id"
  end

  create_table "statistics", force: :cascade do |t|
    t.integer "definition_id", null: false
    t.integer "seat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["definition_id"], name: "index_statistics_on_definition_id"
    t.index ["seat_id"], name: "index_statistics_on_seat_id"
  end

  add_foreign_key "definitions", "games"
  add_foreign_key "entries", "statistics"
  add_foreign_key "seats", "players"
  add_foreign_key "seats", "sessions"
  add_foreign_key "sessions", "games"
  add_foreign_key "statistics", "definitions"
  add_foreign_key "statistics", "seats"
end
