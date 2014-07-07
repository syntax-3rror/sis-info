class RemoveMesaIdFromMesas < ActiveRecord::Migration
  def change
    remove_column :mesas, :mesa_id, :integer
  end
end
