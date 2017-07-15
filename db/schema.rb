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

ActiveRecord::Schema.define(version: 20170715235301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "results", force: :cascade do |t|
    t.string "min"
    t.string "max"
    t.float "profit"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "security_name"
    t.string "security_symbol"
    t.float "array_of_prices_over_the_duration", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
