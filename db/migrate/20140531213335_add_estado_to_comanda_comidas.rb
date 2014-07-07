class AddEstadoToComandaComidas < ActiveRecord::Migration
  def change
    add_column :comanda_comidas, :estado, :string
  end
end
