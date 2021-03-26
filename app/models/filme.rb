class Filme < ApplicationRecord
  validates :titulo_original, presence: true
  validates :titulo_ptbr, presence:true

  belongs_to :genero
  belongs_to :produtor
  has_and_belongs_to_many :ators
end
