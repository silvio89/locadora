class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf
      t.string :rg
      t.date :nascimento
      t.text :observacoes
      t.integer :usuario_id

      t.timestamps
    end
  end
end
