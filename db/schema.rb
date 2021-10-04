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

ActiveRecord::Schema.define(version: 2021_09_16_183456) do

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.string "rg"
    t.string "cpf"
    t.string "sexo"
    t.string "cor"
    t.string "nome_mae"
    t.string "nome_pai"
    t.integer "cep"
    t.string "localidade"
    t.string "uf"
    t.integer "ibge"
    t.string "logradouro"
    t.string "complemento"
    t.string "bairro"
    t.integer "numero"
    t.string "convenio"
    t.string "titular_conv"
    t.string "carteirinha_conv"
    t.date "validade_conv"
    t.string "cns_conv"
    t.boolean "receber_infadc"
    t.boolean "receber_email"
    t.boolean "receber_sms"
    t.text "observacao"
    t.string "telefone"
    t.string "email"
    t.string "celular"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
