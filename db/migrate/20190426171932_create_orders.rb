class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.real :total_amount
      t.string :shipping_method, :default => 'regular'
      t.string :status, :default => 'pending'

      t.timestamps
    end
  end
end
