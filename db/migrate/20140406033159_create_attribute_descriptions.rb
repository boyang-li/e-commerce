class CreateAttributeDescriptions < ActiveRecord::Migration
  def change
    create_table :attribute_descriptions do |t|
      t.references :attribute, index: true
      t.integer :language_id
      t.string :name, limit: 64, null: false
    end
  end
end
