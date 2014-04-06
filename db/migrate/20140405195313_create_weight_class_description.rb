class CreateWeightClassDescription < ActiveRecord::Migration
  def change
    create_table :weight_class_descriptions do |t|
    	t.references :weight_class, index: true
    	t.integer :language_id
    	t.string :title, limit: 32, null: false
    	t.string :unit, limit: 4, null: false
    end
  end
end