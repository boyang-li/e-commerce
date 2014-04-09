class AttributeGroupDescription < ActiveRecord::Base
  belongs_to :attribute_group

  attr_accessor :name

  validates :name, presence: :true
end
