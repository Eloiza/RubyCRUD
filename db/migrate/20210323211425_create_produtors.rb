class CreateProdutors < ActiveRecord::Migration[6.1]
  def change
    create_table :produtors do |t|
      t.string :nome

      t.timestamps
    end
  end
end
