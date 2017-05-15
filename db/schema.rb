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

ActiveRecord::Schema.define(version: 20170512220235) do

  create_table "offices", force: :cascade do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "business_category",                 default: "", null: false
    t.string   "business_name",                     default: "", null: false
    t.string   "first_name",                        default: "", null: false
    t.string   "last_name",                         default: "", null: false
    t.string   "address",                           default: "", null: false
    t.string   "apt_num",                           default: "", null: false
    t.string   "state",                             default: "", null: false
    t.string   "city",                              default: "", null: false
    t.string   "zip_code",                          default: "", null: false
    t.date     "dob",                                            null: false
    t.string   "card_name",                         default: "", null: false
    t.integer  "card_number",            limit: 25,              null: false
    t.integer  "exp_month",                                      null: false
    t.integer  "exp_year",                                       null: false
    t.integer  "cvv",                                            null: false
    t.string   "billing_address",                   default: "", null: false
    t.string   "billing_apt_num",                   default: "", null: false
    t.string   "billing_state",                     default: "", null: false
    t.string   "billing_city",                      default: "", null: false
    t.string   "billing_zip_code",                  default: "", null: false
    t.integer  "routing_number",         limit: 20,              null: false
    t.integer  "account_number",         limit: 20,              null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["email"], name: "index_offices_on_email", unique: true
    t.index ["reset_password_token"], name: "index_offices_on_reset_password_token", unique: true
  end

  create_table "pets", force: :cascade do |t|
    t.string   "pet_name"
    t.integer  "pet_age"
    t.text     "about"
    t.string   "tpe"
    t.float    "weight"
    t.float    "height"
    t.string   "size"
    t.string   "breed"
    t.string   "sex"
    t.string   "spay"
    t.string   "allergies"
    t.string   "medications"
    t.string   "vaccine"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["user_id", "created_at"], name: "index_pets_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "address",                default: "", null: false
    t.string   "apt_num",                default: "", null: false
    t.string   "state",                  default: "", null: false
    t.string   "city",                   default: "", null: false
    t.integer  "zip_code"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vets", force: :cascade do |t|
    t.string   "vet_name"
    t.text     "about"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.integer  "office_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["office_id", "created_at"], name: "index_vets_on_office_id_and_created_at"
    t.index ["office_id"], name: "index_vets_on_office_id"
  end

end
