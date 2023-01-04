class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :bprice
      t.integer :sprice
      t.string :expiry
      t.integer :quantity
      t.text :size

      t.timestamps
    end
  end
end
