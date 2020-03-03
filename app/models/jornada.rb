class Jornada < ApplicationRecord
  belongs_to :estagiario

  validates :data, presence: true
  validates :hora_inicial, presence: true
  validates :estagiario, presence: true
  enum tipo: [:Interrompida, :Terminada]
end
