class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.real :price
      t.string :imgFront
      t.string :imgBack
      t.integer :inventory
      t.string :category
      t.string :color
      t.string :gender
      t.string :material, array: true, default: []
      t.string :size, array: true, default: []

      t.timestamps
    end
  end
end
