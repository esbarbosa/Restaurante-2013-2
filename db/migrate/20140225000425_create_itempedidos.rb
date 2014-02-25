class CreateItempedidos < ActiveRecord::Migration
  def change
    create_table :itempedidos do |t|
      t.string :subtotal
      t.references :pedido, index: true
      t.references :produto, index: true

      t.timestamps
    end
  end
end
