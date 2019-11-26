class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :short_name
      t.string :full_name
      t.string :address
      t.string :phone
      t.string :user_name
      t.timestamp :date

      t.timestamps
    end
  end
end
