class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :model, :sku, :mpn, limit: 64, null: false
      t.string :upc, limit: 12, null: false
      t.string :ean, limit: 14, null: false
      t.string :jan, limit: 13, null: false
      t.string :isbn, limit: 13, null: false
      t.string :location, limit: 128, null: false
      t.integer :quantity, limit: 4, default: 1, null: false
      t.string :image, limit:255, null: false
      t.integer :shipping, limit: 1, default: 1, null: false
      t.decimal :price, precision: 15, scale: 4, null: false
      t.integer :points, limit: 8, default: 0, null: false
      t.date :date_available, null: false
      t.decimal :weight, precision: 15, scale: 8
      t.decimal :length, precision: 15, scale: 8
      t.decimal :width, precision: 15, scale: 8
      t.integer :subtract, limit: 1
      t.integer :minimum, limit: 11, default: 1, null: false
      t.integer :sort_order, limit: 11
      t.integer :status, limit: 1, default: 1, null: false
      t.integer :viewed, limit: 5, default: 0, null: false
      t.references :stock_status, index: true
      t.references :manufacturer, index: true
      t.references :tax_class, index: true

      t.timestamps
    end
  end

  def down
    drop_table :products     
  end
end