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

ActiveRecord::Schema.define(version: 2020_03_29_024756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biddings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_biddings_on_product_id"
    t.index ["status"], name: "index_biddings_on_status"
    t.index ["user_id"], name: "index_biddings_on_user_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "status", default: 0, null: false
    t.integer "target", default: 0, null: false
    t.string "price", default: "0", null: false
    t.string "address", null: false
    t.bigint "industry_id"
    t.date "expires_at", null: false
    t.integer "condition", default: 0, null: false
    t.boolean "pick_up", default: true, null: false
    t.bigint "user_id"
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "city"
    t.integer "age"
    t.string "comment"
    t.integer "currency", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition"], name: "index_products_on_condition"
    t.index ["currency"], name: "index_products_on_currency"
    t.index ["industry_id"], name: "index_products_on_industry_id"
    t.index ["status"], name: "index_products_on_status"
    t.index ["target"], name: "index_products_on_target"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "dni"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "biddings", "products"
  add_foreign_key "biddings", "users"
  add_foreign_key "products", "industries"
  add_foreign_key "products", "users"
end
