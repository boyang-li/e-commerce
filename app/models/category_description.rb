class CategoryDescription < ActiveRecord::Base
  belongs_to :category

  attr_accessor :name,
    :description,
    :meta_description,
    :meta_keyword

  validates :name, :description, :meta_description, :meta_keyword, presence: :ture
end
