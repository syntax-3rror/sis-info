class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.string :estado

      t.timestamps
    end
  end
end
