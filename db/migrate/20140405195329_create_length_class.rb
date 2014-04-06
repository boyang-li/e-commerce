class CreateLengthClass < ActiveRecord::Migration
  def change
    create_table :length_classes do |t|
    	t.decimal :value, precision: 15, scale: 8
    end
  end
end