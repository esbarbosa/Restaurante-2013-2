class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.string :preco
      t.string :quantidade

      t.timestamps
    end
  end
end
