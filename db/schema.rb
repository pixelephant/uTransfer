# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120308123734) do

  create_table "essential_text_translations", :force => true do |t|
    t.integer  "essential_text_id"
    t.string   "locale"
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_text_translations", ["essential_text_id"], :name => "index_ec0da9a59f5623b792567235d46caae8269b00ac"
  add_index "essential_text_translations", ["locale"], :name => "index_essential_text_translations_on_locale"

  create_table "essential_texts", :force => true do |t|
    t.integer  "essential_id"
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "essential_translations", :force => true do |t|
    t.integer  "essential_id"
    t.string   "locale"
    t.string   "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essential_translations", ["essential_id"], :name => "index_essential_translations_on_essential_id"
  add_index "essential_translations", ["locale"], :name => "index_essential_translations_on_locale"

  create_table "essentials", :force => true do |t|
    t.string   "topic"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculty_translations", :force => true do |t|
    t.integer  "faculty_id"
    t.string   "locale"
    t.text     "desc"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "faculty_translations", ["faculty_id"], :name => "index_faculty_translations_on_faculty_id"
  add_index "faculty_translations", ["locale"], :name => "index_faculty_translations_on_locale"

  create_table "famous_graduate_translations", :force => true do |t|
    t.integer  "famous_graduate_id"
    t.string   "locale"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "famous_graduate_translations", ["famous_graduate_id"], :name => "index_0faca88e56ef26aa5c2e8381a04603e501dd8f81"
  add_index "famous_graduate_translations", ["locale"], :name => "index_famous_graduate_translations_on_locale"

  create_table "famous_graduates", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "image_file"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "index_content_translations", :force => true do |t|
    t.integer  "index_content_id"
    t.string   "locale"
    t.text     "intro"
    t.text     "basic_info"
    t.text     "famous_person_quote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "index_content_translations", ["index_content_id"], :name => "index_75f11df5d215168188da0fd0cdb9228176947ccd"
  add_index "index_content_translations", ["locale"], :name => "index_index_content_translations_on_locale"

  create_table "index_contents", :force => true do |t|
    t.text     "intro",               :null => false
    t.text     "basic_info",          :null => false
    t.string   "famous_person_image", :null => false
    t.text     "famous_person_quote", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "living_costs", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description", :null => false
    t.text     "city1",       :null => false
    t.text     "city2",       :null => false
    t.text     "city3",       :null => false
    t.text     "city4",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", :force => true do |t|
    t.integer  "text_block_id"
    t.string   "image_file"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personals", :force => true do |t|
    t.string   "first_name",    :null => false
    t.string   "last_name",     :null => false
    t.string   "gender",        :null => false
    t.string   "country",       :null => false
    t.integer  "birth_year",    :null => false
    t.string   "phone",         :null => false
    t.string   "email",         :null => false
    t.text     "message"
    t.integer  "university_id"
    t.integer  "faculty_id"
    t.text     "apply_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_flow_translations", :force => true do |t|
    t.integer  "process_flow_id"
    t.string   "locale"
    t.text     "text"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "process_flow_translations", ["locale"], :name => "index_process_flow_translations_on_locale"
  add_index "process_flow_translations", ["process_flow_id"], :name => "index_608a901c8590c14fe94d74ee85f7d031654caa36"

  create_table "process_flows", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "related_industries", :force => true do |t|
    t.string   "name"
    t.string   "image_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_industries_universities", :force => true do |t|
    t.integer  "university_id"
    t.integer  "related_industry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_institutions", :force => true do |t|
    t.string   "name"
    t.string   "image_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_institutions_universities", :force => true do |t|
    t.integer  "university_id"
    t.integer  "related_institution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirement_translations", :force => true do |t|
    t.integer  "requirement_id"
    t.string   "locale"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requirement_translations", ["locale"], :name => "index_requirement_translations_on_locale"
  add_index "requirement_translations", ["requirement_id"], :name => "index_requirement_translations_on_requirement_id"

  create_table "requirements", :force => true do |t|
    t.text     "text"
    t.text     "tution_fee"
    t.integer  "university_id"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonial_translations", :force => true do |t|
    t.integer  "testimonial_id"
    t.string   "locale"
    t.text     "quote"
    t.text     "about"
    t.text     "how"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonial_translations", ["locale"], :name => "index_testimonial_translations_on_locale"
  add_index "testimonial_translations", ["testimonial_id"], :name => "index_testimonial_translations_on_testimonial_id"

  create_table "testimonials", :force => true do |t|
    t.string   "name"
    t.text     "quote"
    t.text     "about"
    t.integer  "university_id"
    t.integer  "faculty_id"
    t.text     "how"
    t.string   "image_file"
    t.string   "icon"
    t.boolean  "index_page"
    t.string   "default_for"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_block_translations", :force => true do |t|
    t.integer  "text_block_id"
    t.string   "locale"
    t.text     "text"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "text_block_translations", ["locale"], :name => "index_text_block_translations_on_locale"
  add_index "text_block_translations", ["text_block_id"], :name => "index_text_block_translations_on_text_block_id"

  create_table "text_blocks", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "visual"
    t.string   "link"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "deadline"
    t.text     "campus"
    t.string   "campus_image"
    t.string   "default_for"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "university_translations", :force => true do |t|
    t.integer  "university_id"
    t.string   "locale"
    t.text     "description"
    t.text     "campus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "university_translations", ["locale"], :name => "index_university_translations_on_locale"
  add_index "university_translations", ["university_id"], :name => "index_university_translations_on_university_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
