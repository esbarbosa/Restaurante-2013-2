class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :dataPedido
      t.string :situacaoPedido
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
