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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150130070528) do

  create_table "original_image_links", force: true do |t|
    t.string   "link"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page"
  end

  create_table "preview_image_links", force: true do |t|
    t.string   "link"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page"
  end

  create_table "questions", force: true do |t|
    t.integer  "template_id"
    t.integer  "page"
    t.integer  "x1"
    t.integer  "x2"
    t.integer  "y1"
    t.integer  "y2"
    t.integer  "height"
    t.integer  "width"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.integer  "submission_id"
    t.integer  "question_id"
    t.integer  "score"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submissions", force: true do |t|
    t.integer  "student_id"
    t.string   "student_name"
    t.text     "annotations"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location_file_name"
    t.string   "location_content_type"
    t.integer  "location_file_size"
    t.datetime "location_updated_at"
    t.integer  "template_id"
  end

  create_table "templates", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location_file_name"
    t.string   "location_content_type"
    t.integer  "location_file_size"
    t.datetime "location_updated_at"
    t.text     "preview_image_links"
    t.string   "original_image_links"
    t.string   "text"
  end

end
