class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :price
      t.string :count

      t.timestamps
    end
  end
end
