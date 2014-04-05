class CreateTaxClass < ActiveRecord::Migration
  def up
    create_table :tax_classes do |t|
    	t.string :title, limit: 32, null: false
    	t.string :description, limit: 255, null: false

    	t.timestamps
    end
  end

  def down
  	drop_table :tax_classes
  end
end
