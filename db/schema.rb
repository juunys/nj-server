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

ActiveRecord::Schema.define(version: 20200407185824) do

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "address_number"
    t.string "complement"
    t.string "neighborhood"
    t.string "cep", null: false
    t.string "state"
    t.string "city"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cep"], name: "index_addresses_on_cep"
    t.index ["city"], name: "index_addresses_on_city"
    t.index ["state"], name: "index_addresses_on_state"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name", null: false
    t.string "query_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_name"], name: "index_conditions_on_query_name"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name", null: false
    t.string "query_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_name"], name: "index_genders_on_query_name"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "ddd"
    t.string "number", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ddd"], name: "index_phones_on_ddd"
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_quantities", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "price", null: false
    t.string "brand"
    t.integer "condition_id"
    t.integer "store_id"
    t.integer "size_id"
    t.integer "status_product_id"
    t.string "photo_references"
    t.integer "gender_id"
    t.integer "product_quantity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_products_on_condition_id"
    t.index ["gender_id"], name: "index_products_on_gender_id"
    t.index ["product_quantity_id"], name: "index_products_on_product_quantity_id"
    t.index ["size_id"], name: "index_products_on_size_id"
    t.index ["status_product_id"], name: "index_products_on_status_product_id"
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name", null: false
    t.string "query_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_name"], name: "index_sizes_on_query_name"
  end

  create_table "status_products", force: :cascade do |t|
    t.string "name", null: false
    t.string "query_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_name"], name: "index_status_products_on_query_name"
  end

  create_table "status_users", force: :cascade do |t|
    t.string "name", null: false
    t.string "query_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_name"], name: "index_status_users_on_query_name"
  end

  create_table "stores", force: :cascade do |t|
    t.string "avatar"
    t.string "background_image"
    t.string "title", null: false
    t.text "description"
    t.string "url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name", null: false
    t.string "query_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["query_name"], name: "index_user_roles_on_query_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "date_of_birth"
    t.string "avatar"
    t.string "activation_code"
    t.string "cpf"
    t.integer "user_role_id"
    t.integer "status_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_users_on_cpf"
    t.index ["status_user_id"], name: "index_users_on_status_user_id"
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

end
