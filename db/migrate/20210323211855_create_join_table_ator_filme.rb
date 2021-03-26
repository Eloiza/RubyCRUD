class CreateJoinTableAtorFilme < ActiveRecord::Migration[6.1]
  def change
    create_join_table :ators, :filmes do |t|
      # t.index [:ator_id, :filme_id]
      # t.index [:filme_id, :ator_id]
    end
  end
end
