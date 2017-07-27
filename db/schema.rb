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

ActiveRecord::Schema.define(version: 20170727044049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_pages", force: :cascade do |t|
    t.string   "page_title"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "some_text"
    t.text     "some_text_2"
    t.string   "side_pic_file_name"
    t.string   "side_pic_content_type"
    t.integer  "side_pic_file_size"
    t.datetime "side_pic_updated_at"
    t.string   "side_pic_2_file_name"
    t.string   "side_pic_2_content_type"
    t.integer  "side_pic_2_file_size"
    t.datetime "side_pic_2_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "logo_2_file_name"
    t.string   "logo_2_content_type"
    t.integer  "logo_2_file_size"
    t.datetime "logo_2_updated_at"
    t.string   "bottm_pic_file_name"
    t.string   "bottm_pic_content_type"
    t.integer  "bottm_pic_file_size"
    t.datetime "bottm_pic_updated_at"
    t.string   "bottm_pic_2_file_name"
    t.string   "bottm_pic_2_content_type"
    t.integer  "bottm_pic_2_file_size"
    t.datetime "bottm_pic_2_updated_at"
    t.string   "bottm_pic_3_file_name"
    t.string   "bottm_pic_3_content_type"
    t.integer  "bottm_pic_3_file_size"
    t.datetime "bottm_pic_3_updated_at"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "date_of_event"
    t.boolean  "big"
    t.boolean  "show_on_main"
    t.text     "short"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
    t.string   "pic_for_a_file_name"
    t.string   "pic_for_a_content_type"
    t.integer  "pic_for_a_file_size"
    t.datetime "pic_for_a_updated_at"
    t.integer  "num"
    t.integer  "position"
  end

  create_table "award_pages", force: :cascade do |t|
    t.string   "page_title"
    t.string   "pic_title"
    t.string   "pic_text"
    t.text     "some_text"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
  end

  create_table "awards", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "num"
    t.string   "description"
  end

  create_table "banners", force: :cascade do |t|
    t.string   "image_vertical_file_name"
    t.string   "image_vertical_content_type"
    t.integer  "image_vertical_file_size"
    t.datetime "image_vertical_updated_at"
    t.string   "image_horizontal_file_name"
    t.string   "image_horizontal_content_type"
    t.integer  "image_horizontal_file_size"
    t.datetime "image_horizontal_updated_at"
    t.string   "image_square_file_name"
    t.string   "image_square_content_type"
    t.integer  "image_square_file_size"
    t.datetime "image_square_updated_at"
    t.string   "link"
    t.integer  "position"
    t.boolean  "main_page"
    t.boolean  "fest_page"
    t.boolean  "award_page"
    t.boolean  "news_page"
    t.boolean  "gallery_page"
    t.boolean  "cup_page"
    t.boolean  "organizers_page"
    t.boolean  "contact_page"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "champs", force: :cascade do |t|
    t.string   "title"
    t.string   "name_1"
    t.string   "name_2"
    t.string   "name_3"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.integer  "num"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "date_range"
    t.string   "city_name"
    t.string   "adress"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.string   "page_title"
    t.string   "link_vk"
    t.string   "link_fb"
    t.string   "link_doc"
    t.text     "rules"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
    t.string   "rules_link"
    t.integer  "position"
  end

  create_table "city_faqs", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_city_faqs_on_city_id", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "coffeehouses", force: :cascade do |t|
    t.string   "link"
    t.text     "body"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.integer  "num"
  end

  create_table "contact_pages", force: :cascade do |t|
    t.string   "page_title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "work"
    t.string   "phone_1"
    t.string   "phone_2"
    t.string   "mail"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "cups", force: :cascade do |t|
    t.string   "page_title"
    t.text     "some_text"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "photo_1_file_name"
    t.string   "photo_1_content_type"
    t.integer  "photo_1_file_size"
    t.datetime "photo_1_updated_at"
    t.string   "photo_2_file_name"
    t.string   "photo_2_content_type"
    t.integer  "photo_2_file_size"
    t.datetime "photo_2_updated_at"
    t.string   "photo_3_file_name"
    t.string   "photo_3_content_type"
    t.integer  "photo_3_file_size"
    t.datetime "photo_3_updated_at"
    t.string   "photo_4_file_name"
    t.string   "photo_4_content_type"
    t.integer  "photo_4_file_size"
    t.datetime "photo_4_updated_at"
    t.string   "shop_title"
    t.string   "name_1"
    t.string   "name_2"
    t.string   "name_3"
    t.string   "shop_logo_file_name"
    t.string   "shop_logo_content_type"
    t.integer  "shop_logo_file_size"
    t.datetime "shop_logo_updated_at"
    t.string   "shop_pic_file_name"
    t.string   "shop_pic_content_type"
    t.integer  "shop_pic_file_size"
    t.datetime "shop_pic_updated_at"
    t.string   "shop_pic_2_file_name"
    t.string   "shop_pic_2_content_type"
    t.integer  "shop_pic_2_file_size"
    t.datetime "shop_pic_2_updated_at"
    t.string   "year"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
  end

  create_table "events", force: :cascade do |t|
    t.string   "time_range"
    t.string   "place"
    t.text     "body"
    t.integer  "firsttab_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "title"
    t.integer  "position"
    t.index ["firsttab_id"], name: "index_events_on_firsttab_id", using: :btree
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fest_pages", force: :cascade do |t|
    t.string   "page_title"
    t.string   "first_slide_title"
    t.text     "first_slide_text"
    t.string   "second_slide_title"
    t.text     "second_slide_text"
    t.string   "third_slide_title"
    t.text     "third_slide_text"
    t.text     "some_text"
    t.string   "adress"
    t.string   "fb_link"
    t.string   "vk_link"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "slide_1_file_name"
    t.string   "slide_1_content_type"
    t.integer  "slide_1_file_size"
    t.datetime "slide_1_updated_at"
    t.string   "slide_2_file_name"
    t.string   "slide_2_content_type"
    t.integer  "slide_2_file_size"
    t.datetime "slide_2_updated_at"
    t.string   "slide_3_file_name"
    t.string   "slide_3_content_type"
    t.integer  "slide_3_file_size"
    t.datetime "slide_3_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
    t.string   "slider_link_1"
    t.string   "slider_link_2"
    t.string   "slider_link_3"
  end

  create_table "firsttabs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
  end

  create_table "galerie_pages", force: :cascade do |t|
    t.string   "page_title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
  end

  create_table "galeries", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "body"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
    t.string   "page_title"
    t.integer  "position"
  end

  create_table "links", force: :cascade do |t|
    t.string   "facebook"
    t.string   "vkontakte"
    t.string   "instagram"
    t.string   "email"
    t.string   "bay_ticket"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_pages", force: :cascade do |t|
    t.string   "first_slide_text"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "page_title"
    t.string   "first_slide_title"
    t.string   "second_slide_title"
    t.string   "second_slide_text"
    t.string   "text"
    t.string   "third_slide_title"
    t.text     "third_slide_text"
    t.string   "slide_1_file_name"
    t.string   "slide_1_content_type"
    t.integer  "slide_1_file_size"
    t.datetime "slide_1_updated_at"
    t.string   "slide_2_file_name"
    t.string   "slide_2_content_type"
    t.integer  "slide_2_file_size"
    t.datetime "slide_2_updated_at"
    t.string   "slide_3_file_name"
    t.string   "slide_3_content_type"
    t.integer  "slide_3_file_size"
    t.datetime "slide_3_updated_at"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
    t.string   "slider_link_1"
    t.string   "slider_link_2"
    t.string   "slider_link_3"
  end

  create_table "maps", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "name_1"
    t.string   "name_2"
    t.string   "name_3"
    t.string   "type_of_shit"
  end

  create_table "members", force: :cascade do |t|
    t.string   "link"
    t.text     "body"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "num"
  end

  create_table "news_pages", force: :cascade do |t|
    t.string   "page_title"
    t.string   "first_slide_title"
    t.text     "first_slide_text"
    t.string   "second_slide_title"
    t.text     "second_slide_text"
    t.string   "third_slide_title"
    t.text     "third_slide_text"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "slide_1_file_name"
    t.string   "slide_1_content_type"
    t.integer  "slide_1_file_size"
    t.datetime "slide_1_updated_at"
    t.string   "slide_2_file_name"
    t.string   "slide_2_content_type"
    t.integer  "slide_2_file_size"
    t.datetime "slide_2_updated_at"
    t.string   "slide_3_file_name"
    t.string   "slide_3_content_type"
    t.integer  "slide_3_file_size"
    t.datetime "slide_3_updated_at"
    t.text     "page_title_seo"
    t.text     "description_seo"
    t.text     "keywords_seo"
    t.string   "slider_link_1"
    t.string   "slider_link_2"
    t.string   "slider_link_3"
  end

  create_table "oldwiners", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "partners", force: :cascade do |t|
    t.text     "body"
    t.string   "link"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "num"
    t.string   "city"
    t.boolean  "main_page"
    t.boolean  "fest_page"
    t.boolean  "award_page"
    t.integer  "city_num"
    t.integer  "fest_num"
    t.integer  "award_num"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "galerie_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["galerie_id"], name: "index_photos_on_galerie_id", using: :btree
  end

  create_table "secondtabs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winners", force: :cascade do |t|
    t.string   "work"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "award_id"
    t.integer  "num"
    t.index ["award_id"], name: "index_winners_on_award_id", using: :btree
  end

  add_foreign_key "winners", "awards"
end
