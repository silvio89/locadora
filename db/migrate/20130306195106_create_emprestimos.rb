class CreateEmprestimos < ActiveRecord::Migration
  def change
    create_table :emprestimos do |t|
      t.date :alugado
      t.date :devolvido
      t.integer :filme_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
