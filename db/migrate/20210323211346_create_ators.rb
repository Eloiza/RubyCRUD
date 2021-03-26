class CreateAtors < ActiveRecord::Migration[6.1]
  def change
    create_table :ators do |t|
      t.string :nome
      t.integer :idade
      t.string :genero

      t.timestamps
    end
  end
end
