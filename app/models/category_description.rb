class CategoryDescription < ActiveRecord::Base
  belongs_to :category

  validates :name, :description, :meta_description, :meta_keyword, presence: :ture
end
