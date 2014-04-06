class CreateAttributeGroupDescription < ActiveRecord::Migration
  def change
    create_table :attribute_group_descriptions do |t|
      t.references :attribute_group, index: true
      t.integer :language_id
      t.string :name, limit: 64, null: false
    end
  end
end
