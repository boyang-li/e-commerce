class CreateProductDiscounts < ActiveRecord::Migration
  def change
    create_table :product_discounts do |t|
      t.references :product, index: true
      t.references :customer_group, index: true
      t.integer :quantity, limit: 4
      t.integer :priority, limit: 5
      t.decimal :price, precision: 15, scale: 4
      t.timestamps
    end
  end
end
