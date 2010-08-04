# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100728174930) do

  create_table "addresses", :force => true do |t|
    t.integer  "user_id"
    t.string   "varos"
    t.integer  "irsz"
    t.string   "cim"
    t.integer  "statusz"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.integer  "user_id"
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "order_id"
    t.string   "nev"
    t.integer  "print_id"
    t.integer  "paper_weight_price_id"
    t.integer  "paper_type_id"
    t.integer  "product_type_id"
    t.integer  "document_id"
    t.integer  "darab"
    t.integer  "ar_lezart"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_statuses", :force => true do |t|
    t.string   "nev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "order_status_id"
    t.integer  "address_szla_id"
    t.integer  "address_szall_id"
    t.date     "datum_megr"
    t.date     "datum_szall"
    t.text     "megjegyzes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paper_categories", :force => true do |t|
    t.string   "nev"
    t.text     "leiras"
    t.string   "kep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paper_types", :force => true do |t|
    t.integer  "paper_category_id"
    t.string   "nev"
    t.text     "leiras"
    t.string   "kep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paper_weight_prices", :force => true do |t|
    t.integer  "paper_type_id"
    t.integer  "gramm"
    t.integer  "ar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prints", :force => true do |t|
    t.string   "nev"
    t.text     "leiras"
    t.integer  "szines_oldalak"
    t.integer  "fekete_oldalak"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", :force => true do |t|
    t.string   "nev"
    t.text     "leiras"
    t.string   "kep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", :force => true do |t|
    t.integer  "product_category_id"
    t.string   "nev"
    t.text     "leiras"
    t.string   "kep"
    t.integer  "szelesseg"
    t.integer  "magassag"
    t.integer  "oldalszam"
    t.integer  "felfele_nyilo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "nev_kereszt"
    t.string   "nev_vezetek"
    t.string   "email"
    t.string   "jelszo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
