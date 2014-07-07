class CreateComandaComidas < ActiveRecord::Migration
  def change
    create_table :comanda_comidas do |t|
      t.string :nombre
      t.integer :cantidad
      t.integer :precio
      t.boolean :llevar

      t.timestamps
    end
  end
end
