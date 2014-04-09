class Review < ActiveRecord::Base
  belongs_to :product
  # belongs_to :customer
  
  attr_accessor :author, :text, :rating, :status

  validates :author, :text, presence: :true
end
