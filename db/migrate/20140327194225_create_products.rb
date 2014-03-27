class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
    	t.string 		"title",							:limit => 300, :null => false
    	t.string 		"description",				:limit => 800, :null => false
    	t.integer		"vender_id",					:null => false
    	t.boolean		"active",							:default => true, :null => false
    	t.integer   "min",                :null => false
    	t.integer   "max",								:null => false
    	t.datetime	"start_time",					:null => false
    	t.datetime	"end_time",						:null => false
    	t.datetime  "expire_on",
    	t.decimal	  "regular_price",			:precision => 10, :scale => 2, :null => false
    	t.decimal	  "actual_price",				:precision => 10, :scale => 2, :null => false
    	t.decimal	  "product_fee",				:precision => 10, :scale => 2, :null => false
    	t.string		"currency",						:limit => 2, :default => 'CA', :null => false
    	t.string		"image_url",					:limit => 100, :null => false
    	t.boolean   "require_shipping",		:default => true, :null => false
    	t.string		"editor",							:limit => 50, :null => false
    	t.string		"payment_gateway",		:limit => 10
    	t.integer		"categories_id"

      t.timestamps
    end
  end

  def down
  	drop_table :products
  end
end
