class CreateGeneralAttributes < ActiveRecord::Migration
  def change
    create_table :general_attributes do |t|
      t.references :attribute_group, index: true
      t.integer :sort_order, limit: 3
    end
  end
end
