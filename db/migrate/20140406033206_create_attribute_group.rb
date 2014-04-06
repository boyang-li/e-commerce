class CreateAttributeGroup < ActiveRecord::Migration
  def change
    create_table :attribute_groups do |t|
      t.integer :sort_order, limit: 3
    end
  end
end
