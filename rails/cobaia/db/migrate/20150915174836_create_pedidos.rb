class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.text :descricao
      t.integer :prioridade, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
