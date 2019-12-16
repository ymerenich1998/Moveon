class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :model
      t.string :mark
      t.string :year
      t.string :colour

      t.timestamps
    end
  end
end
