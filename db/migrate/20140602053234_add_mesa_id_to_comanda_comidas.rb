class AddMesaIdToComandaComidas < ActiveRecord::Migration
  def change
    add_column :comanda_comidas, :mesa_id, :integer
  end
end
