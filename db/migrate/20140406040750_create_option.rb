class CreateOption < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :type, limit: 32
      t.integer :sort_order, limit: 3
    end
  end
end
