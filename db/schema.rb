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

ActiveRecord::Schema.define(version: 2021_03_23_211855) do

  create_table "ators", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.string "genero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ators_filmes", id: false, force: :cascade do |t|
    t.integer "ator_id", null: false
    t.integer "filme_id", null: false
  end

  create_table "filmes", force: :cascade do |t|
    t.string "titulo_original"
    t.string "titulo_ptbr"
    t.integer "ano_lancamento"
    t.integer "genero_id", null: false
    t.integer "produtor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genero_id"], name: "index_filmes_on_genero_id"
    t.index ["produtor_id"], name: "index_filmes_on_produtor_id"
  end

  create_table "generos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produtors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "filmes", "generos"
  add_foreign_key "filmes", "produtors"
end
