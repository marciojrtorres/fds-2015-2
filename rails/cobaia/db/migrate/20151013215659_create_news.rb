class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end
