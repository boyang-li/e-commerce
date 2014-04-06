class CreateProductDescription < ActiveRecord::Migration
  def change
    create_table :product_descriptions do |t|
      t.references :product, index: true
      t.integer :language_id
      t.string :name, null: false
      t.text :description, null: false
      t.string :meta_description, null: false
      t.string :meta_keyword, null: false
      t.text :tag, null: false
    end
  end
end