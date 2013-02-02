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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130202143631) do

  create_table "bills", :force => true do |t|
    t.float    "amount_due"
    t.date     "date_paid"
    t.float    "amount_paid"
    t.integer  "paid_mode"
    t.integer  "status"
    t.string   "token"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills", ["status"], :name => "index_bills_on_status"

  create_table "clients", :force => true do |t|
    t.integer  "cpa_id"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "first"
    t.string   "last"
    t.date     "dob"
    t.string   "address"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["cpa_id"], :name => "index_clients_on_cpa_id"
  add_index "clients", ["email"], :name => "index_clients_on_email", :unique => true

  create_table "cpas", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "name"
    t.integer  "capacity"
    t.boolean  "allow_client"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cpas", ["email"], :name => "index_cpas_on_email", :unique => true

  create_table "documents", :force => true do |t|
    t.integer  "client_id"
    t.integer  "cpa_id"
    t.integer  "bill_id"
    t.string   "name"
    t.float    "size"
    t.integer  "by"
    t.integer  "year"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents", ["client_id"], :name => "index_documents_on_client_id"
  add_index "documents", ["cpa_id"], :name => "index_documents_on_cpa_id"
  add_index "documents", ["year"], :name => "index_documents_on_year"

end
