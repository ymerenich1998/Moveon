# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :phone
      t.string :address
      t.string :desc

      t.timestamps
    end
  end
end
