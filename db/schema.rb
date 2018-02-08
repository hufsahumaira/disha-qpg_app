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

ActiveRecord::Schema.define(version: 20170803211924) do

  create_table "add_questions", force: :cascade do |t|
    t.text     "question"
    t.string   "difficulty"
    t.float    "mark"
    t.string   "course"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "create_question"
    t.index ["question"], name: "index_add_questions_on_question", unique: true
  end

  create_table "add_questions_question_papers", id: false, force: :cascade do |t|
    t.integer "add_question_id",   null: false
    t.integer "question_paper_id", null: false
    t.index ["add_question_id"], name: "index_add_questions_question_papers_on_add_question_id"
    t.index ["question_paper_id"], name: "index_add_questions_question_papers_on_question_paper_id"
  end

  create_table "question_papers", force: :cascade do |t|
    t.string   "name"
    t.integer  "fullmark"
    t.integer  "module"
    t.integer  "quespermodul"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "paper_difficulty"
    t.string   "code"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated"
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
