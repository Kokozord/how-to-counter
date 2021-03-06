# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_02_201642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_admin_managed_resources", force: :cascade do |t|
    t.string "class_name", null: false
    t.string "action", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_name", "action", "name"], name: "active_admin_managed_resources_index", unique: true
  end

  create_table "active_admin_permissions", force: :cascade do |t|
    t.integer "managed_resource_id", null: false
    t.integer "role", limit: 2, default: 0, null: false
    t.integer "state", limit: 2, default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["managed_resource_id", "role"], name: "active_admin_permissions_index", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role", limit: 2, default: 0, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "civilizations", force: :cascade do |t|
    t.string "name"
    t.string "picture_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "civilizations_units", id: false, force: :cascade do |t|
    t.bigint "unit_id", null: false
    t.bigint "civilization_id", null: false
    t.index ["civilization_id", "unit_id"], name: "index_civilizations_units_on_civilization_id_and_unit_id"
    t.index ["unit_id", "civilization_id"], name: "index_civilizations_units_on_unit_id_and_civilization_id"
  end

  create_table "direct_counters", force: :cascade do |t|
    t.integer "countered_unit_id"
    t.integer "counter_unit_id"
    t.text "description"
  end

  create_table "tactical_counters", force: :cascade do |t|
    t.integer "countered_unit_id"
    t.integer "counter_unit_id"
    t.text "description"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "attack"
    t.integer "armor"
    t.integer "pierce_armor"
    t.integer "range"
    t.integer "accuracy"
    t.integer "hp"
    t.string "picture_url"
    t.string "building"
    t.bigint "upgrade_tree_id"
    t.text "advice"
    t.boolean "unique", default: false
    t.index ["upgrade_tree_id"], name: "index_units_on_upgrade_tree_id"
  end

  create_table "upgrade_trees", force: :cascade do |t|
    t.string "name"
  end

end
