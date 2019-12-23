class CreateOrderServices < ActiveRecord::Migration[5.2]
  def change
    create_table :order_services do |t|
      t.integer :order_id
      t.integer :service_id
      t.integer :item_id

      t.timestamps
    end
  end
end
