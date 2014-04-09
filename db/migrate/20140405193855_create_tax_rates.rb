class CreateTaxRates < ActiveRecord::Migration
  def change
    create_table :tax_rates do |t|
    	# t.integer :geo_zone_id
    	t.string :name, limit: 32, null: false
    	t.decimal :rate, precision: 15, scale: 4
    	t.string :type, limit: 1
    	t.timestamps
    end
  end
end