class CreateCategorizations < ActiveRecord::Migration
  def change
    create_join_table :products, :categories, table_name: :categorizations
  end
end
