class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.decimal :total_amount, precision: 10, scale: 2
      t.string :shipping_method, :default => 'regular'
      t.string :status, :default => 'pending'

      t.timestamps
    end
  end
end
