class Attribute < ActiveRecord::Base
  has_many :product_attributes
  has_many :products, through: :product_attributes
  has_one :attribute_description

  belongs_to :product_attribute
  belongs_to :attribute_group

  attr_accessor :sort_order
end
