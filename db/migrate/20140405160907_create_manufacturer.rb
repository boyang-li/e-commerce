class CreateManufacturer < ActiveRecord::Migration
  def up
    create_table :manufacturers do |t|
    	t.string :name, limit: 64, null: false
    	t.string :image, limit: 255, null: false
    	t.integer :sort_order, limit: 3
    end
  end

  def down
  	drop_table :manufacturers
  end
end
