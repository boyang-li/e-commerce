class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :product, index: true
      t.references :customer, index: true
      t.string :author, limit: 64, null: false
      t.text :text, null: false
      t.integer :rating, limit: 1
      t.integer :status, limit: 1
      t.timestamps
    end
  end
end
