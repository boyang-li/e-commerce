class CreateStockStatus < ActiveRecord::Migration
  def change
    create_table :stock_statuses do |t|
    	t.integer :language_id
    	t.string :name, limit: 32, null: false
    end
  end
end