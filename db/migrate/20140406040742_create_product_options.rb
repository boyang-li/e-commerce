class CreateProductOption < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.references :product, index: true
      t.references :option, index: true
      t.text :option_value, null: false
      t.integer :required, limit: 1
    end
  end
end
