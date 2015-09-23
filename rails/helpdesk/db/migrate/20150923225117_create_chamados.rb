class CreateChamados < ActiveRecord::Migration
  def change
    create_table :chamados do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
