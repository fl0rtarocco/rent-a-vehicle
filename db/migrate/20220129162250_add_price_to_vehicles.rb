class AddPriceToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :price, :float
  end
end
