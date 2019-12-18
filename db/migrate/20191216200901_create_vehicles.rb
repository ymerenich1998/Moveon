# frozen_string_literal: true

class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :number
      t.string :vehicle_model_id
      t.string :vehicle_mark_id
      t.string :year
      t.string :colour

      t.timestamps
    end
  end
end
