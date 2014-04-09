class Review < ActiveRecord::Base
  belongs_to :product
  # belongs_to :customer

  validates :author, :text, presence: :true
end
