class AddLlevarFromComandaComidas < ActiveRecord::Migration
  def change
    add_column :comanda_comidas, :llevar, :string
  end
end
