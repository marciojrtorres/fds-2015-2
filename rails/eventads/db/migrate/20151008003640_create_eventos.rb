class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo, limit: 50
      t.string :resumo, limit: 1000
      t.text :texto
      t.datetime :data
      t.string :local, limit: 100

      t.timestamps
    end
  end
end
