class CreateCompromissos < ActiveRecord::Migration
  def change
    create_table :compromissos do |t|
      t.text :descricao
      t.timestamp :quando

      t.timestamps
    end
  end
end
