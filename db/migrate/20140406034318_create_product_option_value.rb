class CreateProductOptionValue < ActiveRecord::Migration
  def change
    create_table :product_option_values do |t|
      t.references :product_option, index: true
      t.references :product, index: true
      t.references :option, index: true
      t.references :option_value, index: true
      t.integer :quantity, limit: 3
      t.integer :subtract, limit: 1
      t.decimal :price, precision: 15, scale: 4
      t.string :price_prefix, limit: 1, null: false
      t.integer :points, limit: 8
      t.string :points_prefix, limit: 1, null: false
      t.decimal :weight, precision: 15, scale: 8
      t.string :weight_prefix, limit: 1, null: false
    end
  end
end
