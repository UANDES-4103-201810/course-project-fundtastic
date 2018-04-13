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

ActiveRecord::Schema.define(version: 20180412213848) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_categories_on_project_id"
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
    t.index ["project_id"], name: "index_funds_on_project_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
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
    t.index ["project_id"], name: "index_promises_on_project_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "email"
    t.string "password"
    t.string "creditcard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
