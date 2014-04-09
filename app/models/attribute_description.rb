class AttributeDescription < ActiveRecord::Base
  belongs_to :attribute

  validates :name, presence: :true
end
