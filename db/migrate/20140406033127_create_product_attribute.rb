class CreateProductAttribute < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
    	t.references :product, index: true
      t.references :attribute, index: true
      t.integer :language_id
      t.text :text, null: false
    end
  end
end
