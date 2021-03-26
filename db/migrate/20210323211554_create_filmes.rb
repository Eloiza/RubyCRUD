class CreateFilmes < ActiveRecord::Migration[6.1]
  def change
    create_table :filmes do |t|
      t.string :titulo_original
      t.string :titulo_ptbr
      t.integer :ano_lancamento
      t.belongs_to :genero, null: false, foreign_key: true
      t.belongs_to :produtor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
