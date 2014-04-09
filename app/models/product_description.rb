class ProductDescription < ActiveRecord::Base
  belongs_to :product

  validates :name, :description, :meta_description, :meta_keyword, :tag, presence: :ture
end
