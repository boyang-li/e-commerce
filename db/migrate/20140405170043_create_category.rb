class CreateCategory < ActiveRecord::Migration
  def up
    create_table :categories do |t|
    	t.string :image, limit: 255, null:false
    	t.integer :parent_id, limit: 11
    	t.integer :top, limit: 1
    	t.integer :column, limit: 3
    	t.integer :sort_order, limit: 3
    	t.integer :status, limit: 1

    	t.timestamps
    end
  end

  def down
  	drop_table :categories
  end
end
