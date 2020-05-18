# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_14_021448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role", default: "read", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "assisted_addresses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "number"
    t.bigint "district_id", null: false
    t.bigint "city_id", null: false
    t.date "first_assistance"
    t.date "last_assistance"
    t.date "first_interview"
    t.date "last_interview"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cpf"
    t.integer "profession_id"
    t.integer "marital_status_id"
    t.string "external_contact"
    t.integer "average_income_id"
    t.integer "residence_status_id"
    t.date "born_date"
    t.string "naturalness"
    t.string "spouse_name"
    t.date "spouse_born_date"
    t.string "spouse_naturalness"
    t.integer "spouse_profession_id"
    t.date "beginning_housing"
    t.index ["city_id"], name: "index_assisted_addresses_on_city_id"
    t.index ["district_id"], name: "index_assisted_addresses_on_district_id"
  end

  create_table "assisted_benefits", force: :cascade do |t|
    t.bigint "assisted_address_id", null: false
    t.bigint "benefit_id", null: false
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assisted_address_id"], name: "index_assisted_benefits_on_assisted_address_id"
    t.index ["benefit_id"], name: "index_assisted_benefits_on_benefit_id"
  end

  create_table "assisted_phones", force: :cascade do |t|
    t.bigint "assisted_address_id", null: false
    t.bigint "phone_type_id", null: false
    t.string "number"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assisted_address_id"], name: "index_assisted_phones_on_assisted_address_id"
    t.index ["phone_type_id"], name: "index_assisted_phones_on_phone_type_id"
  end

  create_table "assisted_residents", force: :cascade do |t|
    t.bigint "assisted_address_id", null: false
    t.string "full_name"
    t.string "nick_name"
    t.string "cell_phone"
    t.string "phone"
    t.string "email"
    t.string "facebook"
    t.string "instagram"
    t.date "born_date"
    t.boolean "is_employed"
    t.boolean "is_receiving"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cpf"
    t.index ["assisted_address_id"], name: "index_assisted_residents_on_assisted_address_id"
  end

  create_table "assisted_vulnerabilities", force: :cascade do |t|
    t.bigint "assisted_address_id", null: false
    t.bigint "social_vulnerability_type_id", null: false
    t.bigint "social_vulnerability_score_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assisted_address_id"], name: "index_assisted_vulnerabilities_on_assisted_address_id"
    t.index ["social_vulnerability_score_id"], name: "index_assisted_vulnerabilities_on_social_vulnerability_score_id"
    t.index ["social_vulnerability_type_id"], name: "index_assisted_vulnerabilities_on_social_vulnerability_type_id"
  end

  create_table "average_incomes", force: :cascade do |t|
    t.integer "order"
    t.string "rage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "benefits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.string "name"
    t.integer "population"
    t.string "mayor"
    t.string "social_worker"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "code_number"
    t.string "code_string"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phone_types", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "residence_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_assistance_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_entities", force: :cascade do |t|
    t.string "register_name"
    t.string "register_number"
    t.string "social_name"
    t.bigint "social_entity_type_id", null: false
    t.bigint "social_entity_status_id", null: false
    t.string "address"
    t.string "number"
    t.bigint "district_id", null: false
    t.bigint "city_id", null: false
    t.string "referential_point"
    t.string "phones"
    t.string "emails"
    t.string "web_site"
    t.string "business_hours"
    t.date "fundation_date"
    t.date "closing_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_social_entities_on_city_id"
    t.index ["district_id"], name: "index_social_entities_on_district_id"
    t.index ["social_entity_status_id"], name: "index_social_entities_on_social_entity_status_id"
    t.index ["social_entity_type_id"], name: "index_social_entities_on_social_entity_type_id"
  end

  create_table "social_entity_statuses", force: :cascade do |t|
    t.string "name"
    t.boolean "is_active"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_entity_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_vulnerability_scores", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_vulnerability_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  add_foreign_key "assisted_addresses", "cities"
  add_foreign_key "assisted_addresses", "districts"
  add_foreign_key "assisted_benefits", "assisted_addresses"
  add_foreign_key "assisted_benefits", "benefits"
  add_foreign_key "assisted_phones", "assisted_addresses"
  add_foreign_key "assisted_phones", "phone_types"
  add_foreign_key "assisted_residents", "assisted_addresses"
  add_foreign_key "assisted_vulnerabilities", "assisted_addresses"
  add_foreign_key "assisted_vulnerabilities", "social_vulnerability_scores"
  add_foreign_key "assisted_vulnerabilities", "social_vulnerability_types"
  add_foreign_key "cities", "states"
  add_foreign_key "districts", "cities"
  add_foreign_key "social_entities", "cities"
  add_foreign_key "social_entities", "districts"
  add_foreign_key "social_entities", "social_entity_statuses"
  add_foreign_key "social_entities", "social_entity_types"
  add_foreign_key "states", "countries"
end
