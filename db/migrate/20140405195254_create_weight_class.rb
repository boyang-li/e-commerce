class CreateWeightClass < ActiveRecord::Migration
  def change
    create_table :weight_classes do |t|
    	t.decimal :value, precision: 15, scale: 8
    end
  end
end