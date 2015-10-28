class AddUsuarioIdToCompromissos < ActiveRecord::Migration
  def change
    add_column :compromissos, :usuario_id, :integer
  end
end
