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

ActiveRecord::Schema.define(version: 20200406172754) do

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "address_number"
    t.string "complement"
    t.string "neighborhood"
    t.string "cep"
    t.string "city"
    t.string "state"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "codes", force: :cascade do |t|
    t.integer "sequencial_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.string "query_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.string "query_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "sequencial_code_id"
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["sequencial_code_id"], name: "index_orders_on_sequencial_code_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "ddd"
    t.string "number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.string "brand"
    t.integer "condition_id"
    t.integer "store_id"
    t.integer "size_id"
    t.integer "status_product_id"
    t.integer "photo_id"
    t.integer "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_products_on_condition_id"
    t.index ["gender_id"], name: "index_products_on_gender_id"
    t.index ["photo_id"], name: "index_products_on_photo_id"
    t.index ["size_id"], name: "index_products_on_size_id"
    t.index ["status_product_id"], name: "index_products_on_status_product_id"
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.string "query_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_products", force: :cascade do |t|
    t.string "name"
    t.string "query_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_users", force: :cascade do |t|
    t.string "name"
    t.string "query_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "avatar"
    t.string "background"
    t.string "title"
    t.text "description"
    t.string "url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.string "query_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.date "date_of_birth"
    t.string "avatar"
    t.string "activation_code"
    t.string "cpf"
    t.integer "user_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status_user_id"
    t.index ["status_user_id"], name: "index_users_on_status_user_id"
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

end
