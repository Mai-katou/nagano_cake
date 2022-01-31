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

ActiveRecord::Schema.define(version: 2022_01_30_122915) do

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "postal_code"
    t.string "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "email"
    t.string "encrypted_password"
    t.string "postal_code"
    t.string "telephone_number"
    t.boolean "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.text "introduction"
    t.integer "price"
    t.boolean "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.string "postal_code"
    t.string "address"
    t.string "name"
    t.integer "postage"
    t.integer "subtotal"
    t.integer "payment_method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
