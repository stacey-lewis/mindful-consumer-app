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

ActiveRecord::Schema.define(version: 2020_12_09_034350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consumer_categories", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumer_categories_registered_users", force: :cascade do |t|
    t.integer "consumer_category_id"
    t.integer "registered_user_id"
  end

  create_table "consumer_categories_registered_vendors", force: :cascade do |t|
    t.integer "consumer_category_id"
    t.integer "registered_vendor_id"
  end

  create_table "consumer_values", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumer_values_registered_users", force: :cascade do |t|
    t.integer "consumer_value_id"
    t.integer "registered_user_id"
  end

  create_table "consumer_values_registered_vendors", force: :cascade do |t|
    t.integer "consumer_value_id"
    t.integer "registered_vendor_id"
  end

  create_table "registered_users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "suburb"
    t.integer "phone_number"
    t.boolean "opt_in_for_emails"
    t.integer "postcode"
    t.text "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registered_vendors", force: :cascade do |t|
    t.text "vendor_name"
    t.integer "phone_number"
    t.text "address"
    t.text "suburb"
    t.text "state"
    t.integer "postcode"
    t.text "website"
    t.text "logo"
    t.text "background_image"
    t.text "hero_image"
    t.text "opening_hours"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_address"
    t.string "instagram"
    t.string "facebook"
    t.boolean "online_store"
    t.string "password_digest"
    t.boolean "admin"
    t.float "latitude"
    t.float "longitude"
  end

end
