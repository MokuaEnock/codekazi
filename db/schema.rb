# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_27_105224) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "company"
    t.string "location"
    t.integer "category_id"
    t.string "salary_range"
    t.string "employment_type"
    t.integer "years_of_experience"
    t.string "education_level"
    t.datetime "posted_at"
    t.datetime "expires_at"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "searchable_content"
  end

  create_table "jobs_categories", id: false, force: :cascade do |t|
    t.integer "job_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_jobs_categories_on_category_id"
    t.index ["job_id", "category_id"], name: "index_jobs_categories_on_job_id_and_category_id"
    t.index ["job_id"], name: "index_jobs_categories_on_job_id"
  end

  add_foreign_key "jobs_categories", "categories"
  add_foreign_key "jobs_categories", "jobs"
end
