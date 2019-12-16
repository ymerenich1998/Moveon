# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :worker_id
      t.integer :vehicle_id
      t.integer :service_id
      t.integer :customer_id
      t.string :date
      t.integer :status

      t.timestamps
    end
  end
end
