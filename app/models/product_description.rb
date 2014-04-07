class ProductDescription < ActiveRecord::Base
  belongs_to :product

  attr_accessor :name,
    :description

  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)  
    end
  end
end
