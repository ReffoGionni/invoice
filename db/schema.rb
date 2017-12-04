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

ActiveRecord::Schema.define(version: 20171114214619) do

  create_table "customers", force: :cascade do |t|
    t.string "cf"
    t.string "name"
    t.string "surname"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.decimal "postcode"
    t.string "city"
    t.string "prov"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.decimal "cf"
    t.decimal "invoiceNumber"
    t.decimal "totDuration"
    t.date "payDate"
    t.decimal "totalDue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string "cf"
<<<<<<< HEAD
    t.text "description"
=======
    t.text "desctiption"
>>>>>>> 0115828ede0d9c4c29ecd06948e078c133b6b7b7
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.decimal "duration"
    t.string "cf"
    t.decimal "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
