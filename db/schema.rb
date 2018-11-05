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

ActiveRecord::Schema.define(version: 2018_11_05_121634) do

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planning_periods", force: :cascade do |t|
    t.string "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shift_patterns", force: :cascade do |t|
    t.integer "planning_period_id"
    t.time "shift_start"
    t.time "shift_length"
    t.time "breaks"
    t.string "requirements"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planning_period_id"], name: "index_shift_patterns_on_planning_period_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "shift_pattern_id"
    t.integer "number_of_staff"
    t.string "requirements"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_pattern_id"], name: "index_shifts_on_shift_pattern_id"
  end

end
