class StockStatus < ActiveRecord::Base
  belongs_to :product

  attr_accessor :name

  validates :name, presence: :true
end
