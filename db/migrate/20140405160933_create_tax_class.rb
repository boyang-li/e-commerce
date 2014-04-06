class CreateTaxClass < ActiveRecord::Migration
  def change
    create_table :tax_classes do |t|
    	t.string :title, limit: 32, null: false
    	t.string :description, null: false
    	t.timestamps
    end
  end
end