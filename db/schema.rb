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

ActiveRecord::Schema.define(version: 2021_11_29_165350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_facts", force: :cascade do |t|
    t.string "name"
    t.string "food_group"
    t.float "calories"
    t.float "fat"
    t.float "cholestrol"
    t.float "sodium"
    t.float "carbohydrate"
    t.float "fiber"
    t.float "sugar"
    t.float "protein"
    t.float "vitamind"
    t.float "calcium"
    t.float "iron"
    t.float "potassium"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "serving_description"
    t.float "serving_weight"
  end

  create_table "food_tracks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "food_fact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_fact_id"], name: "index_food_tracks_on_food_fact_id"
    t.index ["user_id"], name: "index_food_tracks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false, null: false
    t.float "start_weight"
    t.float "goal_weight"
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.float "height"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weight_logs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "weight"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weight_logs_on_user_id"
  end

  add_foreign_key "food_tracks", "food_facts"
  add_foreign_key "food_tracks", "users"
  add_foreign_key "weight_logs", "users"
end
