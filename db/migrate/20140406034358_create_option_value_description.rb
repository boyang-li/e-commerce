class CreateOptionValueDescription < ActiveRecord::Migration
  def change
    create_table :option_value_descriptions do |t|
      t.references :option_value, index: true
      t.integer :language_id
      t.string :name, limit: 64, null: false
    end
  end
end
