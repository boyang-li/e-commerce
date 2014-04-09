class CreateOptionDescriptions < ActiveRecord::Migration
  def change
    create_table :option_descriptions do |t|
      t.references :option, index: true
      t.integer :language_id
      t.string :name, limit: 128, null: false
    end
  end
end
