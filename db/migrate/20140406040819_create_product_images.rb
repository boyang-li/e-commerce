class CreateProductImage < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.references :product, index: true
      t.string :image, null: false
      t.integer :sort_order, limit: 3
    end
  end
end
