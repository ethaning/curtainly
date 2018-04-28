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

ActiveRecord::Schema.define(version: 20180428194935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: :cascade do |t|
    t.string "image"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover"
    t.boolean "published"
  end

  create_table "gallery_images", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "gallery_id"
    t.index ["gallery_id"], name: "index_gallery_images_on_gallery_id"
  end

  create_table "social_links", force: :cascade do |t|
    t.string "instagram_url"
    t.string "facebook_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subheaders", force: :cascade do |t|
    t.string "testimonials"
    t.string "about_us"
    t.string "contact_us"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "homepage"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "name"
    t.text "testimonial"
    t.string "location"
    t.boolean "published"
    t.boolean "carousel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gallery_images", "galleries"
end
