class CreateStockStatus < ActiveRecord::Migration
  def up
    create_table :stock_statuses do |t|
    	t.string :name, limit: 32, null: false
    end
  end

  def down
  	drop_table :stock_statuses
  end
end
