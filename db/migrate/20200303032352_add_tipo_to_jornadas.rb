class AddTipoToJornadas < ActiveRecord::Migration[6.0]
  def change
  	add_column :jornadas, :tipo, :integer
  end
end
