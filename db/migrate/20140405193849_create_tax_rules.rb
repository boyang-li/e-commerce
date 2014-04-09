class CreateTaxRules < ActiveRecord::Migration
  def change
    create_table :tax_rules do |t|
    	t.references :tax_class, index: true
    	t.references :tax_rate, index: true
    	t.string :based, limit: 10
    	t.integer :priority, limit: 5
    end
  end
end