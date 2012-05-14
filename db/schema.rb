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

ActiveRecord::Schema.define(:version => 20120511163418) do

  create_table "age_group_categories", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "age_group_details", :force => true do |t|
    t.integer  "age_group_category_id"
    t.string   "gender",                :null => false
    t.integer  "min_age",               :null => false
    t.integer  "max_age",               :null => false
    t.string   "comments"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "organizer_id"
    t.string   "name",         :null => false
    t.string   "website"
    t.string   "description"
    t.date     "starts_on",    :null => false
    t.date     "ends_on",      :null => false
    t.string   "address"
    t.string   "city",         :null => false
    t.string   "state_cd",     :null => false
    t.string   "zip_cd"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "organizers", :force => true do |t|
    t.string "name",          :null => false
    t.string "website"
    t.string "phone_num"
    t.string "cell_num"
    t.string "email_address", :null => false
    t.string "contact_name"
    t.string "address1",      :null => false
    t.string "address2"
    t.string "city",          :null => false
    t.string "state_cd",      :null => false
    t.string "zip_cd",        :null => false
  end

  create_table "pricing_types", :force => true do |t|
    t.string   "pricing_type"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pricings", :force => true do |t|
    t.integer  "race_id"
    t.string   "price_type",                               :null => false
    t.date     "starts_on",                                :null => false
    t.date     "ends_on",                                  :null => false
    t.date     "promo_code"
    t.boolean  "active",                                   :null => false
    t.decimal  "amount",     :precision => 2, :scale => 6, :null => false
    t.string   "comments"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "races", :force => true do |t|
    t.integer  "event_id"
    t.integer  "sport_id"
    t.integer  "age_group_category_id"
    t.string   "name",                  :null => false
    t.datetime "starts_at",             :null => false
    t.string   "description"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "races_registrations", :force => true do |t|
    t.integer  "race_id"
    t.integer  "registration_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "registrations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "age_group_detail_id"
    t.integer  "pricing_id"
    t.datetime "registered_at",          :null => false
    t.boolean  "waiver_signed"
    t.boolean  "waiver_signed_under_18"
    t.string   "confirm_code"
    t.string   "tshirt_size"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "sports", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "abbrev",     :null => false
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name",          :null => false
    t.string   "last_name",           :null => false
    t.string   "middle_init"
    t.date     "born_on",             :null => false
    t.string   "gender",              :null => false
    t.string   "address1",            :null => false
    t.string   "address2",            :null => false
    t.string   "city",                :null => false
    t.string   "state_cd",            :null => false
    t.string   "zip_cd"
    t.string   "phone_num"
    t.string   "cell_num"
    t.string   "email_address",       :null => false
    t.string   "password",            :null => false
    t.string   "swim_100m_time"
    t.boolean  "treat_as_user",       :null => false
    t.boolean  "notify_about_events", :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
