class AttributeGroupDescription < ActiveRecord::Base
  belongs_to :attribute_group

  validates :name, presence: :true
end
