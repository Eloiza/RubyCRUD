class Ator < ApplicationRecord
  validates :nome, presence: true
  validates :idade, presence:true
  validates :genero, presence: true
  # validates :filme_id, presence: true

  has_and_belongs_to_many :filmes
end
