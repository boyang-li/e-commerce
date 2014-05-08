class ProductImage < ActiveRecord::Base
  belongs_to :product

  validates :image, presence: :true
  validates :image, allow_blank: :true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "must be an url for GIF, JPG or PNG image."
  }
end
