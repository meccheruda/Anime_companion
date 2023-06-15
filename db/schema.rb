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

ActiveRecord::Schema[7.0].define(version: 2023_06_15_072159) do
  create_table "anime_voices", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "anime_id"
    t.bigint "voice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_anime_voices_on_anime_id"
    t.index ["voice_id"], name: "index_anime_voices_on_voice_id"
  end

  create_table "animes", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "year", null: false
    t.text "image_url", null: false
    t.string "quote", null: false
    t.string "production", null: false
    t.string "directed_by", null: false
    t.integer "genre_id", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_animes_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.date "birth_date", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voices", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.bigint "anime_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_voices_on_anime_id"
  end

  add_foreign_key "anime_voices", "animes"
  add_foreign_key "anime_voices", "voices"
  add_foreign_key "animes", "users"
  add_foreign_key "voices", "animes"
end
