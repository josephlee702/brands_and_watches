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

ActiveRecord::Schema[7.0].define(version: 2023_10_17_001813) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.integer "year_founded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "watches", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "model"
    t.string "bracelet"
    t.string "movement"
    t.string "case_material"
    t.integer "case_size"
    t.boolean "crown_guard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "brand_id", null: false
    t.index ["brand_id"], name: "index_watches_on_brand_id"
  end

  add_foreign_key "watches", "brands"
end
