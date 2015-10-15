class AddColumnImagemToEventos < ActiveRecord::Migration
  def up
    add_attachment :eventos, :imagem
  end

  def down
    remove_attachment :eventos, :imagem
  end
end
