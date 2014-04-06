class CreateManufacturer < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
    	t.string :name, limit: 64, null: false
    	t.string :image, null: false
    	t.integer :sort_order, limit: 3
    end
  end
end