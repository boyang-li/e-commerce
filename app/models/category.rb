class Category < ActiveRecord::Base
  has_one :category_descriptions
  has_many :categorizations
  has_many :products, through: :categorizations

  # Self join on "parent_id" for category hierarchy
  has_many :subcategories, class_name: "Category",
                           foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"

  attr_accessor :image,
    :top,
    :column,
    :sort_order,
    :status

  validates :image, presence: :ture
  validates :image, allow_blank: :true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "must be an url for GIF, JPG or PNG image."
  }          
end
