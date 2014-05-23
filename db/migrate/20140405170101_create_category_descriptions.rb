class CreateCategoryDescriptions < ActiveRecord::Migration
  def cahnge
    create_table :category_descriptions do |t|
    	t.references :category, index: true
    t.integer :language_id
    	t.string :name, null: false
    	t.text :description, null: false
    	t.string :meta_description, null: false
    	t.string :meta_keyword, null: false
    end
  end
end