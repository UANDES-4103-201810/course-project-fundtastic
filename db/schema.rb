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

ActiveRecord::Schema.define(version: 20180609180724) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.integer "cost"
    t.boolean "stagemail"
    t.boolean "stageaprove"
    t.boolean "stagereceive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "fund_confirmed", default: false
    t.string "confirm_token"
    t.index ["project_id"], name: "index_funds_on_project_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "project_categories", force: :cascade do |t|
    t.integer "project_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_project_categories_on_category_id"
    t.index ["project_id"], name: "index_project_categories_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.integer "goal"
    t.integer "daystogo"
    t.datetime "release"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "amount"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "promises", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.integer "price"
    t.datetime "date"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["project_id"], name: "index_promises_on_project_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "info"
  end

  create_table "user_promises", force: :cascade do |t|
    t.integer "user_id"
    t.integer "promise_id"
    t.boolean "stagemail"
    t.boolean "stageaprove"
    t.boolean "stagereceive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promise_id"], name: "index_user_promises_on_promise_id"
    t.index ["user_id"], name: "index_user_promises_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "address"
    t.string "creditcard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean "admin", default: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_wishlists_on_project_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

end
