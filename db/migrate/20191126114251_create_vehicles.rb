class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :mark
      t.string :model
      t.string :colour
      t.string :reg_id
      t.integer :mileage
      t.string :customer_name
      t.string :body_num
      t.integer :reg_year
      t.timestamp :purchase_date

      t.timestamps
    end
  end
end
