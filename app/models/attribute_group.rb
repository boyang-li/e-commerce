class AttributeGroup < ActiveRecord::Base
  has_many :attributes
  has_one :attribute_group_description

  attr_accessor :aort_order
end
