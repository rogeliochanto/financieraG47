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

ActiveRecord::Schema.define(version: 2021_05_10_025344) do

  create_table "loans", force: :cascade do |t|
    t.integer "amount"
    t.integer "interest"
    t.integer "fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "term"
    t.integer "kind"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "source_of_incomes", force: :cascade do |t|
    t.integer "salary_income"
    t.integer "independent"
    t.integer "mixed_income"
    t.integer "expenses"
    t.integer "difference"
    t.boolean "approval"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "loan_id", null: false
    t.index ["loan_id"], name: "index_source_of_incomes_on_loan_id"
    t.index ["user_id"], name: "index_source_of_incomes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "loans", "users"
  add_foreign_key "source_of_incomes", "loans"
  add_foreign_key "source_of_incomes", "users"
end
