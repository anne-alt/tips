class CreateSalesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_orders do |t|
      t.integer :customer_id
      t.integer :product_id
      t.integer :quantity
      t.integer :total
      t.string :mop
      t.integer :amountReceived

      t.timestamps
    end
  end
end
