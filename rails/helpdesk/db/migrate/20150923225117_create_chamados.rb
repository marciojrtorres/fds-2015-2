class CreateChamados < ActiveRecord::Migration
  def change
    create_table :chamados do |t|
      t.text :descricao
      # 0:baixa, 1:normal, 2:alta, 3:urgente
      t.integer :prioridade, default: 1

      t.timestamps
    end
  end
end
