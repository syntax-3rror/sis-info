class AddCargoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cargo, :string
  end
end
