class AddPasswordDigestToEstagiarios < ActiveRecord::Migration[6.0]
  def change
  	add_column :estagiarios, :password_digest, :string
  end
end
