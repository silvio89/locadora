class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.integer :ano

      t.timestamps
    end
  end
end
