class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_join_table :products, :attributes, table_name: :product_attributes do |t|
      t.index :product_id
      t.index :attribute_id
      t.integer :language_id
      t.text :text, null: false
    end
  end
end
