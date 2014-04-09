class CreateProductRewards < ActiveRecord::Migration
  def change
    create_table :product_rewards do |t|
      t.references :product, index: true
      t.references :customer_group, index: true
      t.integer :points, limit: 8
    end
  end
end
