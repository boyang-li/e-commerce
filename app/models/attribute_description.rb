class AttributeDescription < ActiveRecord::Base
  belongs_to :attribute

  attr_accessor :name

  validates :name, presence: :true
end
