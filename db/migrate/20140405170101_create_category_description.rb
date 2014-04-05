class CreateCategoryDescription < ActiveRecord::Migration
  def up
    create_table :category_descriptions, id: false do |t|
    	t.references :category, index: true
    	t.string :name, limit: 255, null: false
    	t.text :description, null: false
    	t.string :meta_description, limit: 255, null: false
    	t.string :meta_keyword, limit: 255, null: false
    end
  end

  def down
  	drop_table :category_descriptions
  end
end
