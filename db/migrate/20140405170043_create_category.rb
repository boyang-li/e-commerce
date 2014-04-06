class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :image, null:false
    	t.integer :parent_id
    	t.integer :top, limit: 1
    	t.integer :column, limit: 3
    	t.integer :sort_order, limit: 3
    	t.integer :status, limit: 1
    	t.timestamps
    end
  end
end