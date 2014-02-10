class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nomeCliente
      t.string :cpf
      t.string :telefone

      t.timestamps
    end
  end
end
