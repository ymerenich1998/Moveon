# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :worker_id
      t.integer :vehicle_id
      t.integer :customer_id
      t.date :date
      t.integer :status, null: false, default: 1

      t.timestamps
    end
  end
end
