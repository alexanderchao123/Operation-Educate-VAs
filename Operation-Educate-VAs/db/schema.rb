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

ActiveRecord::Schema.define(version: 2018_12_08_175331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questionaires", force: :cascade do |t|
    t.bigint "user_id"
    t.string "date_of_birth"
    t.string "sex"
    t.string "city"
    t.string "role_in_military"
    t.string "military_start_date"
    t.integer "time_in_combat"
    t.integer "dependents"
    t.string "education_level"
    t.string "discharge_date"
    t.string "part_online_fulltime"
    t.string "cumm_nine_elev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questionaires_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "rep"
    t.string "email"
    t.integer "veterans"
    t.integer "tuition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "va_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
