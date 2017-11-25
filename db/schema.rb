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

ActiveRecord::Schema.define(version: 20171124173601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apiotics_settings", id: :bigint, default: nil, force: :cascade do |t|
    t.text "key"
    t.text "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_button_safe_logs", force: :cascade do |t|
    t.boolean "safe"
    t.boolean "safe_ack"
    t.boolean "safe_complete"
    t.text "safe_timestamp"
    t.text "safe_status"
    t.text "safe_action"
    t.bigint "button_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_buttons", force: :cascade do |t|
    t.boolean "safe"
    t.boolean "safe_ack"
    t.boolean "safe_complete"
    t.text "safe_timestamp"
    t.text "safe_status"
    t.text "safe_action"
    t.bigint "node_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_led_led_state_logs", force: :cascade do |t|
    t.boolean "led_state"
    t.boolean "led_state_ack"
    t.boolean "led_state_complete"
    t.text "led_state_timestamp"
    t.text "led_state_status"
    t.text "led_state_action"
    t.bigint "led_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_leds", force: :cascade do |t|
    t.boolean "led_state"
    t.boolean "led_state_ack"
    t.boolean "led_state_complete"
    t.text "led_state_timestamp"
    t.text "led_state_status"
    t.text "led_state_action"
    t.bigint "node_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_neo_pixel_stick_eight_led_color_logs", force: :cascade do |t|
    t.bigint "led_color"
    t.boolean "led_color_ack"
    t.boolean "led_color_complete"
    t.text "led_color_timestamp"
    t.text "led_color_status"
    t.text "led_color_action"
    t.bigint "neo_pixel_stick_eight_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_neo_pixel_stick_eight_led_index_logs", force: :cascade do |t|
    t.bigint "led_index"
    t.boolean "led_index_ack"
    t.boolean "led_index_complete"
    t.text "led_index_timestamp"
    t.text "led_index_status"
    t.text "led_index_action"
    t.bigint "neo_pixel_stick_eight_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_neo_pixel_stick_eights", force: :cascade do |t|
    t.bigint "led_color"
    t.boolean "led_color_ack"
    t.boolean "led_color_complete"
    t.text "led_color_timestamp"
    t.text "led_color_status"
    t.text "led_color_action"
    t.bigint "led_index"
    t.boolean "led_index_ack"
    t.boolean "led_index_complete"
    t.text "led_index_timestamp"
    t.text "led_index_status"
    t.text "led_index_action"
    t.bigint "node_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_nodes", force: :cascade do |t|
    t.text "apiotics_instance"
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
