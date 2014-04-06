class CreateOptionValue < ActiveRecord::Migration
  def change
    create_table :option_values do |t|
      t.references :option, index: true
      t.string :image, null: false
      t.integer :sort_order, limit: 3
    end
  end
end
