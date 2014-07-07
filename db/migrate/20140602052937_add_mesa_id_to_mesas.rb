class AddMesaIdToMesas < ActiveRecord::Migration
  def change
    add_column :mesas, :mesa_id, :integer
  end
end
