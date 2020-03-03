class CreateJornadas < ActiveRecord::Migration[6.0]
  def change
    create_table :jornadas do |t|
      t.date :data
      t.datetime :hora_inicial
      t.datetime :hora_final
      t.references :estagiario, index: true, foreign_key: true
      t.timestamps
    end
  end
end
