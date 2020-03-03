class CreateEstagiarios < ActiveRecord::Migration[6.0]
  def change
    create_table :estagiarios do |t|
      t.string :nome, limit: 25
      t.string :sobrenome, limit: 50
      t.integer :sexo, limit: 1
      t.string :cpf, limit: 15
      t.string :email, limit: 50
      t.string :celular, limit: 15
      t.string :user, limit: 25
      t.timestamps
    end
  end
end
