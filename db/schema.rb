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

ActiveRecord::Schema.define(version: 20140225000425) do

  create_table "clientes", force: true do |t|
    t.string   "nomeCliente"
    t.string   "cpf"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conta", force: true do |t|
    t.string   "dataAbertura"
    t.string   "valorTotal"
    t.string   "status"
    t.string   "dataFechamento"
    t.integer  "pedido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conta", ["pedido_id"], name: "index_conta_on_pedido_id"

  create_table "contas", force: true do |t|
    t.string   "dataAbertura"
    t.string   "valorTotal"
    t.string   "status"
    t.string   "dataFechamento"
    t.integer  "pedido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contas", ["pedido_id"], name: "index_contas_on_pedido_id"

  create_table "itempedidos", force: true do |t|
    t.string   "subtotal"
    t.integer  "pedido_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itempedidos", ["pedido_id"], name: "index_itempedidos_on_pedido_id"
  add_index "itempedidos", ["produto_id"], name: "index_itempedidos_on_produto_id"

  create_table "pedidos", force: true do |t|
    t.string   "dataPedido"
    t.string   "situacaoPedido"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["cliente_id"], name: "index_pedidos_on_cliente_id"

  create_table "produtos", force: true do |t|
    t.string   "descricao"
    t.string   "preco"
    t.string   "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
