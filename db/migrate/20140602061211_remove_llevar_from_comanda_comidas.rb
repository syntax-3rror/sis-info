class RemoveLlevarFromComandaComidas < ActiveRecord::Migration
  def change
    remove_column :comanda_comidas, :llevar, :boolean
  end
end
