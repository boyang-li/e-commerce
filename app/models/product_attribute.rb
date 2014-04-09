class ProductAttribute < ActiveRecord::Base
  belongs_to :product
  belongs_to :attribute

  validates :text, presence: :true
end
