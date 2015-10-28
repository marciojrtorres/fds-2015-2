class AddUsuarioIdToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :usuario_id, :integer
  end
end
