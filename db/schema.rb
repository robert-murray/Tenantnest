# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160209224018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "leases", force: :cascade do |t|
    t.integer  "agent_id"
    t.integer  "tenant_id"
    t.string   "address_street"
    t.string   "address_suburb"
    t.integer  "address_postcode"
    t.string   "address_state"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "currently_active"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "rated"
  end

  create_table "outgoing_ratings", force: :cascade do |t|
    t.integer  "lease_id"
    t.integer  "rent_amount"
    t.string   "rent_frequency"
    t.boolean  "rent_arrears"
    t.boolean  "rent_arrears_remedied"
    t.boolean  "nrt_received"
    t.text     "nrt_reason"
    t.boolean  "inspection_periodic"
    t.boolean  "inspection_clean"
    t.boolean  "inspection_pets"
    t.boolean  "inspection_dammage"
    t.text     "inspection_dammage_comment"
    t.boolean  "neighbor_complaints"
    t.text     "neighbor_complaints_comment"
    t.boolean  "bond_refunded"
    t.text     "bond_refunded_comment"
    t.boolean  "tenancy_terminated"
    t.boolean  "tenancy_terminated_by"
    t.text     "tenancy_terminated_comment"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
