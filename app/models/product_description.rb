class ProductDescription < ActiveRecord::Base
  belongs_to :product

  attr_accessor :name,
    :description,
    :meta_description,
    :meta_keyword,
    :tag

  validates :name, :description, :meta_description, :meta_keyword, :tag, presence: :ture
end
