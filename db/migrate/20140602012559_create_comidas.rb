class CreateComidas < ActiveRecord::Migration
  def change
    create_table :comidas do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :disponibilidad
      t.text :foto
      t.integer :precio

      t.timestamps
    end
  end
end
