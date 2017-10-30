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

ActiveRecord::Schema.define(version: 20171215164151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baseline_rates", force: :cascade do |t|
    t.integer "dist_mi_min"
    t.integer "dist_mi_max"
    t.integer "weight_lbs_min"
    t.integer "weight_lbs_max"
    t.integer "rate"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year"], name: "index_baseline_rates_on_year"
  end

  create_table "branch_of_service_contacts", force: :cascade do |t|
    t.text "custsvc_org"
    t.text "custsvc_dsn"
    t.text "custsvc_tel_comm"
    t.text "custsvc_tel_tollfree"
    t.text "custsvc_email"
    t.text "custsvc_hours"
    t.text "custsvc_url"
    t.text "custsvc_facebook_url"
    t.text "claims_dsn"
    t.text "claims_tel_comm"
    t.text "claims_tel_tollfree"
    t.text "claims_fax_dsn"
    t.text "claims_fax_comm"
    t.text "claims_fax_tollfree"
    t.text "claims_email"
    t.text "claims_post"
    t.text "retiree_dsn"
    t.text "retiree_tel_comm"
    t.text "retiree_tel_tollfree"
    t.text "retiree_fax_dsn"
    t.text "retiree_fax_comm"
    t.text "retiree_fax_tollfree"
    t.text "retiree_email"
    t.text "retiree_post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "claims_url"
    t.bigint "branch_of_service_id"
    t.text "ppm_website"
    t.text "ppm_tel_comm"
    t.index ["branch_of_service_id"], name: "index_branch_of_service_contacts_on_branch_of_service_id"
  end

  create_table "branch_of_services", force: :cascade do |t|
    t.string "name", null: false
    t.integer "display_order", null: false
    t.string "slug", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dtod_zip3_distances", force: :cascade do |t|
    t.integer "orig_zip3"
    t.integer "dest_zip3"
    t.float "dist_mi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entitlements", force: :cascade do |t|
    t.string "rank", null: false
    t.integer "total_weight_self", null: false
    t.integer "total_weight_self_plus_dependents"
    t.integer "pro_gear_weight"
    t.integer "pro_gear_weight_spouse"
    t.text "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.text "question", null: false
    t.text "answer", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "category"
  end

  create_table "full_packs", force: :cascade do |t|
    t.integer "schedule"
    t.integer "weight_lbs_min"
    t.integer "weight_lbs_max"
    t.decimal "rate", precision: 7, scale: 2
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "full_unpacks", force: :cascade do |t|
    t.integer "schedule"
    t.decimal "rate", precision: 8, scale: 5
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "household_good_categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "icon", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_household_good_categories_on_name", unique: true
  end

  create_table "household_goods", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.bigint "household_good_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_good_category_id"], name: "index_household_goods_on_household_good_category_id"
  end

  create_table "installations", force: :cascade do |t|
    t.text "name", null: false
    t.text "street_address"
    t.text "extended_address"
    t.text "locality"
    t.text "region"
    t.text "region_code"
    t.text "postal_code"
    t.text "country_name"
    t.text "country_code"
    t.float "latitude"
    t.float "longitude"
    t.json "email_addresses", default: []
    t.json "phone_numbers", default: []
    t.json "urls", default: []
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intra_alaska_baseline_rates", force: :cascade do |t|
    t.integer "dist_mi_min"
    t.integer "dist_mi_max"
    t.integer "weight_lbs_min"
    t.integer "weight_lbs_max"
    t.integer "rate"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year"], name: "index_intra_alaska_baseline_rates_on_year"
  end

  create_table "offices", force: :cascade do |t|
    t.text "type"
    t.bigint "shipping_office_id"
    t.text "name", null: false
    t.text "street_address"
    t.text "extended_address"
    t.text "locality"
    t.text "region"
    t.text "region_code"
    t.text "postal_code"
    t.text "country_name"
    t.text "country_code"
    t.float "latitude"
    t.float "longitude"
    t.json "email_addresses", default: []
    t.json "phone_numbers", default: []
    t.json "urls", default: []
    t.text "services", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "hours"
    t.text "note"
    t.index ["shipping_office_id"], name: "index_offices_on_shipping_office_id"
  end

  create_table "service_areas", force: :cascade do |t|
    t.integer "service_area"
    t.text "name"
    t.integer "services_schedule"
    t.decimal "linehaul_factor", precision: 7, scale: 2
    t.decimal "orig_dest_service_charge", precision: 7, scale: 2
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_specific_posts", force: :cascade do |t|
    t.text "title"
    t.date "effective_at"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_of_service_id"
    t.index ["branch_of_service_id"], name: "index_service_specific_posts_on_branch_of_service_id"
  end

  create_table "shorthauls", force: :cascade do |t|
    t.integer "cwt_mi_min"
    t.integer "cwt_mi_max"
    t.decimal "rate", precision: 7, scale: 2
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year"], name: "index_shorthauls_on_year"
  end

  create_table "top_best_value_scores", force: :cascade do |t|
    t.text "orig"
    t.text "dest"
    t.decimal "perf_period_h"
    t.decimal "perf_period_hs"
    t.decimal "perf_period_1"
    t.decimal "perf_period_1s"
    t.decimal "perf_period_2"
    t.decimal "perf_period_2s"
    t.decimal "perf_period_3"
    t.decimal "perf_period_3s"
    t.decimal "perf_period_4"
    t.decimal "perf_period_4s"
    t.decimal "perf_period_5"
    t.decimal "perf_period_5s"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutorial_steps", force: :cascade do |t|
    t.bigint "tutorial_id"
    t.text "content", null: false
    t.text "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pro_tip"
    t.index ["tutorial_id"], name: "index_tutorial_steps_on_tutorial_id"
  end

  create_table "tutorials", force: :cascade do |t|
    t.text "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "slug", null: false
  end

  create_table "zip3s", force: :cascade do |t|
    t.integer "zip3"
    t.text "basepoint_city"
    t.text "state"
    t.integer "service_area"
    t.text "rate_area"
    t.integer "region"
    t.text "mileage_t"
    t.integer "mileage_i"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zip5_rate_areas", force: :cascade do |t|
    t.integer "zip5"
    t.text "rate_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zip_code_tabulation_areas", force: :cascade do |t|
    t.text "zip_code", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
  end

  add_foreign_key "branch_of_service_contacts", "branch_of_services"
  add_foreign_key "household_goods", "household_good_categories"
  add_foreign_key "service_specific_posts", "branch_of_services"
  add_foreign_key "tutorial_steps", "tutorials"
end
