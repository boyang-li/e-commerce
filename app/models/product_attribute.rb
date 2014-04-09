class ProductAttribute < ActiveRecord::Base
  belongs_to :product
  belongs_to :attribute

  attr_accessor :text

  validates :text, presence: :true
end
