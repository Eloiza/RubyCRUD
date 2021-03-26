class Ator < ApplicationRecord
  validates :ator_id, presence: true
  validates :filme_id, presence: true
end
