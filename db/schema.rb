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

ActiveRecord::Schema.define(version: 2022_07_12_001635) do

  create_table "animal_control_requests", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "description"
    t.integer "completed_requests_id"
    t.datetime "created_at"
  end

  create_table "completed_request_forms", force: :cascade do |t|
    t.string "client_name"
    t.string "street_address_line_1"
    t.string "street_address_line_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "phone_number"
    t.string "email"
    t.string "date_of_inspection"
    t.string "nuisance_animal"
    t.string "inspection_fee"
    t.string "trap_installation_fee"
    t.string "price_for_animal_removal_or_relocation"
    t.string "exclusion_and_preventative_work"
    t.string "sub_total"
    t.string "state_sales_tax"
    t.string "deposit"
    t.string "total"
    t.string "signed_and_paid"
    t.datetime "created_at"
  end

end
