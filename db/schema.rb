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

ActiveRecord::Schema.define(version: 2021_09_03_201124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diems", force: :cascade do |t|
    t.date "custdate"
    t.string "moonsign"
    t.string "moonstat"
    t.integer "house"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_diems_on_user_id"
  end

  create_table "dreams", force: :cascade do |t|
    t.text "dtext"
    t.text "motifs"
    t.text "dkeys"
    t.bigint "user_id", null: false
    t.bigint "diem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diem_id"], name: "index_dreams_on_diem_id"
    t.index ["user_id"], name: "index_dreams_on_user_id"
  end

  create_table "practices", force: :cascade do |t|
    t.string "name"
    t.time "tempus"
    t.text "note"
    t.string "category"
    t.string "keyword"
    t.bigint "user_id", null: false
    t.bigint "diem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diem_id"], name: "index_practices_on_diem_id"
    t.index ["user_id"], name: "index_practices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "rising"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "diems", "users"
  add_foreign_key "dreams", "diems"
  add_foreign_key "dreams", "users"
  add_foreign_key "practices", "diems"
  add_foreign_key "practices", "users"
end
