class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :dataAbertura
      t.string :valorTotal
      t.string :status
      t.string :dataFechamento
      t.references :pedido, index: true

      t.timestamps
    end
  end
end
