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

ActiveRecord::Schema[7.1].define(version: 2026_07_14_125253) do
  create_table "application_for_a_jobs", force: :cascade do |t|
    t.string "entreprise"
    t.string "lieu"
    t.string "poste"
    t.string "statut"
    t.date "datedenvoi"
    t.date "datederelance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lien_internet"
    t.string "contact"
    t.date "date_dernier_contact"
    t.text "detail_offre"
    t.string "commentaire"
  end

  create_table "canal_recrutements", force: :cascade do |t|
    t.string "name"
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_canal_recrutements_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employeur_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "name"
    t.integer "secteur_id", null: false
    t.integer "employeur_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employeur_type_id"], name: "index_employeurs_on_employeur_type_id"
    t.index ["secteur_id"], name: "index_employeurs_on_secteur_id"
  end

  create_table "ikigai_methodes", force: :cascade do |t|
    t.string "vocation"
    t.string "profession"
    t.string "passion"
    t.string "mission"
    t.string "aimer"
    t.string "doue"
    t.string "besoin"
    t.string "paye"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  create_table "secteurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "job_id"
    t.integer "city_id"
    t.integer "secteur_id"
    t.integer "country_id"
    t.string "experience", default: "", null: false
    t.string "salaire", default: "", null: false
    t.string "nomcomplet", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "canal_recrutements", "cities"
  add_foreign_key "cities", "regions"
  add_foreign_key "employeurs", "employeur_types"
  add_foreign_key "employeurs", "secteurs"
  add_foreign_key "regions", "countries"
end
