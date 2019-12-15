class CreateServiceHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :service_histories do |t|
      t.timestamp :start_date
      t.integer :mileage
      t.string :service_name
      t.integer :time_spent
      t.integer :amount
      t.integer :price
      t.string :customer_name
      t.timestamp :end_date

      t.timestamps
    end
  end
end
